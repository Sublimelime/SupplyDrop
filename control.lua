require("stages.stageone")
require("stages.stagetwo")
require("stages.stagethree")
require("stages.endgame")


--- USER CONFIG

-- Change this to change how many rolls the loot generator makes per chest.
local ITEMS_PER_CHEST = 5 --default 5

-- Change these two variables to change how much time between each crate in minutes.
local TIME_BETWEEN_DROP_MIN = 10 --default 10
local TIME_BETWEEN_DROP_MAX = 30 --default 30

-- Change this to change how far away at max distance from the selected player the crate is allowed to drop.
local DISTANCE_TO_CRATE = 50 --default 50

----------------

local RANDOM_TIME = 3000 --this variable is used to pick a random time to drop a supply chest. The first chest should arrive after about 5 mins.
--18000

script.on_event({defines.events.on_tick},
   function(e)
      if e.tick%RANDOM_TIME == 0 and e.tick ~= 0 then --run very infreqently, only when tick is evenly divisible by RANDOM_TIME

         --RANDOM_TIME = math.random(TIME_BETWEEN_DROP_MIN*60*60,TIME_BETWEEN_DROP_MAX*60*60)

         --count number of players on server
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
            --place the chest. This is an assembling machine because I needed a 3x3 entity to make it easier to find.
            chestPos = game.surfaces[1].find_non_colliding_position("assembling-machine-1",{x=randomPosX,y=randomPosY}, 0, 3)
         until chestPos

         --game.print("Chest spawned at " .. chestPos.x .. "," .. chestPos.y)

         game.surfaces[1].create_entity{name="big-explosion",position=chestPos,force="neutral"} --create an explosion to simulate a landing
         local chestEntity = game.surfaces[1].create_entity{name="supply-chest",position=chestPos,force="neutral"}
         if chestEntity then

            --fill chest with randomly selected items based on game stage
            if not randomPlayer.force.technologies["steel-processing"].researched then
               --stage one, has not researched steel
               for i=1,ITEMS_PER_CHEST do --insert items from the stage one pool
                  chestEntity.insert(stageOne())
               end
            elseif randomPlayer.force.technologies["steel-processing"].researched and not randomPlayer.force.technologies["oil-processing"].researched  then

               --stage two, will have researched steel, but not rocketry
               for i=1,ITEMS_PER_CHEST do --insert items from the stage two pool
                  chestEntity.insert(stageTwo())
               end

            elseif randomPlayer.force.technologies["rocketry"].researched and not randomPlayer.force.technologies["rocket-silo"].researched then
               --stage three, will have researched rocketry, but not silo
               for i=1,ITEMS_PER_CHEST do --insert items from the stage three pool
                  chestEntity.insert(stageThree())
               end
            elseif randomPlayer.force.technologies["rocket-silo"].researched then
               --stage endgame, will have researched rocket silo
               for i=1,ITEMS_PER_CHEST do --insert items from the endgame pool
                  chestEntity.insert(endGame())
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
      "You notice a box with a parachute floating down some distance away.",
      "You notice something falling from the sky. It lands nearby.",
      "A strange box just hit the ground nearby.",
      "You see a crate drop from the sky. It hits the ground, throwing up dust.",
      "A crashing sound interrupts your train of thought.",
      "You are jolted out of thinking by a thud in the distance."}

   return possibilities[math.random(#possibilities)] --return a random lore sentence from possibilities
end
