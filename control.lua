require("stages.stageone")
require("stages.stagetwo")
require("stages.stagethree")
require("stages.endgame")


--- USER CONFIG

-- Change this to change how many rolls the loot generator makes per chest, aka how many unique items.
local ITEMS_PER_CHEST = 5 --default 5

-- Change these two variables to change how much time between each crate in minutes.
local TIME_BETWEEN_DROP_MIN = 10 --default 10
local TIME_BETWEEN_DROP_MAX = 30 --default 30

-- Change this to change how far away at max distance from the selected player the crate is allowed to drop.
local DISTANCE_TO_CRATE = 30 --default 30

----------------

script.on_event({defines.events.on_tick},
   function(e)
      global.random_time = global.random_time or (TIME_BETWEEN_DROP_MAX+TIME_BETWEEN_DROP_MIN)/2*math.pow(60,2)
      if e.tick%global.random_time == 0 and e.tick ~= 0 then --run very infreqently, only when tick is evenly divisible by global.random_time

         global.random_time = math.random(TIME_BETWEEN_DROP_MIN*math.pow(60,2),TIME_BETWEEN_DROP_MAX*math.pow(60,2))

         --count number of players on server, suprised there's no native way to know this
         local numOfPlayers = 1
         while game.players[numOfPlayers+1] ~= nil do
            numOfPlayers = numOfPlayers+1
         end

         local randomPlayer = game.players[math.random(numOfPlayers)] --select a random player of all on the server

         randomPlayer.print(randomLoreMessage())
         local chestPos = nil
         repeat  --ensure it can find a place
            local randomPosX = math.random(randomPlayer.position.x-DISTANCE_TO_CRATE,randomPlayer.position.x+DISTANCE_TO_CRATE)
            local randomPosY = math.random(randomPlayer.position.y-DISTANCE_TO_CRATE,randomPlayer.position.y+DISTANCE_TO_CRATE)
            --Find a place for the chest
            chestPos = game.surfaces[1].find_non_colliding_position("supply-chest",{x=randomPosX,y=randomPosY}, 50, 1)
         until chestPos

         --game.print("Chest spawned at " .. chestPos.x .. "," .. chestPos.y)

         game.surfaces[1].create_entity{name="big-explosion",position=chestPos,force="neutral"} --create an explosion to simulate a landing
         --spawn supply fire
         game.surfaces[1].create_entity{name="supply-fire",position=chestPos,force="neutral"}

         --create the chest
         local chestEntity = game.surfaces[1].create_entity{name="supply-chest",position=chestPos,force="neutral"}

         if chestEntity then
            local counter = 0
            local itemToInsert = nil

            --fill chest with randomly selected items based on game stage
            if not randomPlayer.force.technologies["oil-processing"].researched then
               --stage one, has not researched oil
               counter = 0 --used for while loop below, because you can't modify a for loop's control var in lua
               local itemToInsert = nil --used for testing duplication and adding to chest.
               while counter < ITEMS_PER_CHEST do --insert items from the stage one pool
                  itemToInsert = stageOne()
                  if chestEntity.get_item_count(itemToInsert.name) == 0 then --avoid duplication
                     --game.print("Duplicate found of " .. itemToInsert.name)
                     chestEntity.insert(itemToInsert)
                     counter = counter+1
                  end
               end
            elseif randomPlayer.force.technologies["oil-processing"].researched and not randomPlayer.force.technologies["advanced-oil-processing"].researched  then

               --stage two, will have researched oil, but not advanced oil processing
               counter = 0 --used for while loop below, because you can't modify a for loop's control var in lua
               itemToInsert = nil --used for testing duplication and adding to chest.
               while counter < ITEMS_PER_CHEST do --insert items from the stage one pool
                  itemToInsert = stageTwo()
                  if chestEntity.get_item_count(itemToInsert.name) == 0 then --avoid duplication
                     --game.print("Duplicate found of " .. itemToInsert.name)
                     chestEntity.insert(itemToInsert)
                     counter = counter+1
                  end
               end
            elseif randomPlayer.force.technologies["advanced-oil-processing"].researched and not randomPlayer.force.technologies["rocket-silo"].researched then
               --stage three, will have researched advanced oil processing, but not silo
               counter = 0 --used for while loop below, because you can't modify a for loop's control var in lua
               itemToInsert = nil --used for testing duplication and adding to chest.
               while counter < ITEMS_PER_CHEST do --insert items from the stage one pool
                  itemToInsert = stageThree()
                  if chestEntity.get_item_count(itemToInsert.name) == 0 then --avoid duplication
                     --game.print("Duplicate found of " .. itemToInsert.name)
                     chestEntity.insert(itemToInsert)
                     counter = counter+1
                  end
               end
            elseif randomPlayer.force.technologies["rocket-silo"].researched then
               --stage endgame, will have researched rocket silo
               counter = 0 --used for while loop below, because you can't modify a for loop's control var in lua
               itemToInsert = nil --used for testing duplication and adding to chest.
               while counter < ITEMS_PER_CHEST do --insert items from the stage one pool
                  itemToInsert = endGame()
                  if chestEntity.get_item_count(itemToInsert.name) == 0 then --avoid duplication
                     --game.print("Duplicate found of " .. itemToInsert.name)
                     chestEntity.insert(itemToInsert)
                     counter = counter+1
                  end
               end
            end
         end
      end
   end
)

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
