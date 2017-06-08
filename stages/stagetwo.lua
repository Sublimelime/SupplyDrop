require("stages.stageone")

function stageTwo()

   local possibilities = {
      {name="advanced-circuit",count=math.random(50,100)},
      {name="battery",count=math.random(10,30)},
      {name="big-electric-pole",count=math.random(10,20)},
      {name="car",count=math.random(1,1)},
      {name="chemical-plant",count=math.random(1,5)},
      {name="coal",count=math.random(100,200)},
      {name="construction-robot",count=math.random(5,10)},
      {name="copper-plate",count=math.random(150,300)},
      {name="crude-oil-barrel",count=math.random(1,5)},
      {name="efficiency-module",count=math.random(1,5)},
      {name="electric-engine-unit",count=math.random(10,30)},
      {name="fluid-wagon",count=math.random(1,2)},
      {name="heavy-oil-barrel",count=math.random(1,5)},
      {name="iron-plate",count=math.random(150,300)},
      {name="light-oil-barrel",count=math.random(1,5)},
      {name="logistic-robot",count=math.random(5,10)},
      {name="lubricant-barrel",count=math.random(1,5)},
      {name="medium-electric-pole",count=math.random(20,50)},
      {name="modular-armor",count=math.random(1,2)},
      {name="oil-refinery",count=math.random(10,15)},
      {name="petroleum-gas-barrel",count=math.random(1,5)},
      {name="productivity-module",count=math.random(1,5)},
      {name="roboport",count=math.random(1,5)},
      {name="solid-fuel",count=math.random(50,100)},
      {name="speed-module",count=math.random(1,5)},
      {name="steel-plate",count=math.random(100,200)},
      {name="substation",count=math.random(1,5)},
      {name="tank",count=math.random(1,1)},
   }
   -- inherits the previous loot table, 50% chance
   if math.random(4) > 2  then
      return possibilities[math.random(#possibilities)] --return a random loot from the table above
   else
      return stageOne()
   end
end
