function stageThree()

   --[[
      This stage is from researching advanced oil processing, until the player researches the rocket silo. This should encompass red, green, blue, and some purple science.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=math.random(20,30)},
      {name="advanced-circuit",count=math.random(50,100)},
      {name="assembling-machine-2",count=math.random(5,10)},
      {name="chemical-plant",count=math.random(5,10)},
      {name="cluster-grenade",count=math.random(10,15)},
      {name="coal",count=math.random(200,300)},
      {name="copper-plate",count=math.random(300,400)},
      {name="defender-capsule",count=math.random(20,100)},
      {name="distractor-capsule",count=math.random(20,50)},
      {name="effectivity-module",count=math.random(1,4)},
      {name="effectivity-module-2",count=1},
      {name="electric-furnace",count=math.random(1,5)},
      {name="electric-mining-drill",count=math.random(15,20)},
      {name="electronic-circuit",count=math.random(100,200)},
      {name="express-splitter",count=math.random(1,5)},
      {name="express-transport-belt",count=math.random(10,50)},
      {name="express-underground-belt",count=4},
      {name="fast-inserter",count=math.random(10,25)},
      {name="fast-splitter",count=math.random(5,10)},
      {name="fast-transport-belt",count=math.random(100,200)},
      {name="fast-underground-belt",count=6},
      {name="flame-thrower",count=1},
      {name="flamethrower-turret",count=math.random(1,5)},
      {name="green-wire",count=math.random(50,150)},
      {name="grenade",count=math.random(10,15)},
      {name="gun-turret",count=math.random(5,10)},
      {name="inserter",count=math.random(20,30)},
      {name="iron-plate",count=math.random(300,400)},
      {name="lab",count=math.random(1,5)},
      {name="laser-turret",count=math.random(1,5)},
      {name="oil-refinery",count=math.random(1,3)},
      {name="piercing-rounds-magazine",count=math.random(50,100)},
      {name="power-armor",count=1},
      {name="processing-unit",count=math.random(10,15)},
      {name="productivity-module",count=math.random(1,4)},
      {name="productivity-module-2",count=1},
      {name="rail",count=math.random(150,200)},
      {name="red-wire",count=math.random(50,150)},
      {name="repair-pack",count=math.random(10,20)},
      {name="science-pack-1",count=math.random(50,100)},
      {name="science-pack-2",count=math.random(50,100)},
      {name="science-pack-3",count=math.random(50,100)},
      {name="shotgun-shell",count=math.random(5,30)},
      {name="small-lamp",count=math.random(5,10)},
      {name="solid-fuel",count=math.random(10,40)},
      {name="speed-module",count=math.random(1,4)},
      {name="speed-module-2",count=1},
      {name="splitter",count=math.random(5,10)},
      {name="steam-engine",count=math.random(10,15)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=math.random(1,5)},
      {name="steel-furnace",count=math.random(5,15)},
      {name="steel-plate",count=math.random(100,200)},
      {name="stone-brick",count=math.random(50,100)},
      {name="stone-wall",count=math.random(100,150)},
   }

   return possibilities[math.random(#possibilities)] --return a random loot from the table above
end
