require("stages.stageone")
require("stages.stagetwo")
require("stages.stagethree")
require("stages.endgame")

local DEBUG = false --used for debug, do not enable unless you like chat spam

script.on_event({defines.events.on_tick},
   function(e)
      global.random_time = global.random_time or (settings.global["supply-drop-time-between-drop-max"].value+settings.global["supply-drop-time-between-drop-min"].value)/2*math.pow(60,2)
      if e.tick%global.random_time == 0 and e.tick ~= 0 then --run very infreqently, only when tick is evenly divisible by global.random_time
         doChestSpawn()
      end
   end
)

--Runs the entire operation of a crate drop
function doChestSpawn()
   local chestEntity, randomPlayer = makeChest()
   if chestEntity then
      --fill chest with randomly selected items based on game stage
      if not randomPlayer.force.technologies["advanced-oil-processing"].researched then
         --stage one, has not researched advanced oil processing
         fillChest(chestEntity, 1)
      elseif randomPlayer.force.technologies["advanced-oil-processing"].researched and not randomPlayer.force.technologies["nuclear-fuel-reprocessing"].researched  then
         --stage two, will have researched advanced oil processing, but not nuclear fuel reprocessing
         fillChest(chestEntity, 2)
      elseif randomPlayer.force.technologies["nuclear-fuel-reprocessing"].researched and not randomPlayer.force.technologies["rocket-silo"].researched then
         --stage three, will have researched nuclear fuel repo, but not silo
         fillChest(chestEntity, 3)
      elseif randomPlayer.force.technologies["rocket-silo"].researched then
         --stage endgame, will have researched rocket silo
         fillChest(chestEntity, 4)
      end
      global.random_time = math.random(settings.global["supply-drop-time-between-drop-min"].value*math.pow(60,2),settings.global["supply-drop-time-between-drop-max"].value*math.pow(60,2))
   else --a chest wasn't spawned
      if DEBUG then
         game.print("[Supply-Drop] Unable to find suitable player, deferring crate drop.")
      end

      --adjust the time down slightly, due to the failure
      global.random_time = math.random(settings.global["supply-drop-time-between-drop-min"].value*math.pow(60,2),settings.global["supply-drop-time-between-drop-max"].value*math.pow(60,2))/1.3
   end
end


--This function evaluates all the players on the server, and if a compatible online player that is on the first surface is found,
--It creates and returns the chest entity it made. Otherwise, returns nil.
function makeChest()
   --find a list of all players that are on the main surface
   local validPlayers = {}
   for index, player in pairs(game.connected_players) do
      if player.surface == game.surfaces[1] and player.force.technologies["oil-processing"].researched then table.insert(validPlayers,player) end
   end

   if next(validPlayers) == nil then --no compatible players found
      if DEBUG == true then
         game.print("[Supply-Drop] Could not find a valid player to preform drop on. Aborting.")
      end
      return nil
   end

   local randomPlayer = validPlayers[math.random(#validPlayers)] --select a random player of all valid on the server

   randomPlayer.print(randomLoreMessage())
   local chestPos = nil
   repeat  --ensure it can find a place
      local randomPosX = math.random(randomPlayer.position.x-settings.global["supply-drop-distance-to-crate"].value,randomPlayer.position.x+settings.global["supply-drop-distance-to-crate"].value)
      local randomPosY = math.random(randomPlayer.position.y-settings.global["supply-drop-distance-to-crate"].value,randomPlayer.position.y+settings.global["supply-drop-distance-to-crate"].value)
      --Find a place for the chest
      chestPos = game.surfaces[1].find_non_colliding_position("supply-chest",{x=randomPosX,y=randomPosY}, 50, 1)
   until chestPos

   if DEBUG == true then
      game.print("[Supply-Drop] Chest spawned at " .. chestPos.x .. "," .. chestPos.y)
   end

   game.surfaces[1].create_entity{name="big-explosion",position=chestPos,force="neutral"} --create an explosion to simulate a landing
   --spawn supply fire
   game.surfaces[1].create_entity{name="supply-fire",position=chestPos,force="neutral"}

   --create the chest, return that and the player
   return game.surfaces[1].create_entity{name="supply-chest",position=chestPos,force="neutral"}, randomPlayer

end

--This function evaluates the stage it's given, then fills the provided chest entity with items corresponding to stage.
function fillChest(chestEntity, stage)
   local counter = 0 --used for while loop below, because you can't modify a for loop's control var in lua
   local itemToInsert = nil --used for testing duplication and adding to chest.
   while counter < settings.global["supply-drop-items-per-chest"].value do
      if stage == 1 then itemToInsert = stageOne()
      elseif stage == 2 then itemToInsert = stageTwo()
      elseif stage == 3 then itemToInsert = stageThree()
      elseif stage == 4 then itemToInsert = endGame() end

      if chestEntity.get_item_count(itemToInsert.name) == 0 then --avoid duplication
         if DEBUG then
            game.print("Duplicate found of " .. itemToInsert.name)
         end

         chestEntity.insert(itemToInsert)
         counter = counter+1
      end
   end
end

--Returns a random string from possiblilites.
function randomLoreMessage()

   local possibilities = {
      "You hear a crash nearby.",
      "A dull thud echos near you.",
      "You hear a loud thud, and the sound of glass breaking is heard.",
      "You hear a noise, and a plume of dust is seen rising over the treeline.",
      "You hear the whistling of something falling, then a crash.",
      "The shrill protests of birds mark the arrival of something foreign.",
      "*Thud*",
      "A crate falls from above, smashing a tree.",
      "A blue crate impacts the ground near you. It looks like it nearly burned up on atmospheric entry.",
      "You notice something falling from the sky. It lands nearby.",
      "A strange box just hit the ground nearby.",
      "You see a crate drop from the sky. It hits the ground, throwing up dust.",
      "A crashing sound interrupts your train of thought.",
      "You are jolted out of thinking by a thud in the distance.",
      "A smoldering crate hits the ground with great force near you."}

   return possibilities[math.random(#possibilities)] --return a random lore sentence from possibilities
end

if DEBUG then
   commands.add_command("make-chest","Creates a chest on demand, only usable when debug is true", doChestSpawn)
end
