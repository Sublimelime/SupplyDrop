require("stages.stagethree")

function endGame()

   local possibilities = {
      {name="rocket-silo",count=math.random(1,1)},
      {name="speed-module",count=math.random(10,30)},
      {name="productivity-module",count=math.random(10,30)},
      {name="efficiency-module",count=math.random(10,30)},
      {name="speed-module-2",count=math.random(10,30)},
      {name="efficiency-module-2",count=math.random(10,30)},
      {name="productivity-module-2",count=math.random(10,30)},
      {name="speed-module-3",count=math.random(1,15)},
      {name="efficiency-module-3",count=math.random(1,15)},
      {name="productivity-module-3",count=math.random(1,15)},
      {name="rocket-fuel",count=math.random(10,20)},
      {name="rocket-control-unit",count=math.random(5,10)},
      {name="satellite",count=math.random(1,1)},
      {name="low-density-structure",count=math.random(1,10)},
      {name="requester-chest",count=math.random(1,5)},
      {name="active-provider-chest",count=math.random(1,5)},
      {name="passive-provider-chest",count=math.random(1,5)},
      {name="uranium-238",count=math.random(20,50)},
      {name="uranium-235",count=math.random(5,15)},
      {name="beacon",count=math.random(5,10)},
      {name="assembling-machine-3",count=math.random(10,20)},

   }
   --falls through to previous stages, 10% chance
   if math.random(10) > 1 then
      return possibilities[math.random(#possibilities)] --return a random loot from the table above
   else
      return stageThree()
   end
end
