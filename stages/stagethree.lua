require("stages.stagetwo")

function stageThree()

   local possibilities = {
      {name="assembling-machine-3",count=math.random(10,15)},
      {name="cannon-shell",count=math.random(10,15)},
      {name="centrifuge",count=math.random(1,3)},
      {name="cluster-grenade",count=math.random(10,15)},
      {name="concrete",count=math.random(200,300)},
      {name="defender-capsule",count=math.random(10,20)},
      {name="destroyer-capsule",count=math.random(1,5)},
      {name="distractor-capsule",count=math.random(10,20)},
      {name="efficiency-module",count=math.random(10,20)},
      {name="efficiency-module-2",count=math.random(5,10)},
      {name="explosive-cannon-shell",count=math.random(1,5)},
      {name="explosive-rocket",count=math.random(1,5)},
      {name="explosives",count=math.random(10,20)},
      {name="high-tech-science-pack",count=math.random(10,20)},
      {name="laser-turret",count=math.random(5,15)},
      {name="nuclear-reactor",count=math.random(1,1)},
      {name="power-armor",count=math.random(1,1)},
      {name="processing-unit",count=math.random(10,50)},
      {name="production-science-pack",count=math.random(10,20)},
      {name="productivity-module",count=math.random(10,20)},
      {name="productivity-module-2",count=math.random(5,10)},
      {name="rocket",count=math.random(1,5)},
      {name="speed-module",count=math.random(10,20)},
      {name="speed-module-2",count=math.random(5,10)},
      {name="tank",count=math.random(1,2)},
      {name="uranium-235",count=math.random(1,5)},
      {name="uranium-238",count=math.random(10,30)},

   }

   -- Falls through to the previous stage, 25% chance
   if math.random(4) > 1 then
      return possibilities[math.random(#possibilities)] --return a random loot from the table above
   else
      return stageTwo()
   end
end
