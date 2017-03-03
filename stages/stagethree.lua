function stageThree()

   --[[
      This stage is from researching advanced oil processing, until the player researches the rocket silo. This should encompass red, green, blue, and some purple science.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=noDesyncRandom(20,30)},
      {name="advanced-circuit",count=noDesyncRandom(50,100)},
      {name="assembling-machine-2",count=noDesyncRandom(5,10)},
      {name="chemical-plant",count=noDesyncRandom(5,10)},
      {name="cluster-grenade",count=noDesyncRandom(10,15)},
      {name="coal",count=noDesyncRandom(200,300)},
      {name="copper-plate",count=noDesyncRandom(300,400)},
      {name="defender-capsule",count=noDesyncRandom(20,100)},
      {name="distractor-capsule",count=noDesyncRandom(20,50)},
      {name="effectivity-module",count=noDesyncRandom(1,4)},
      {name="effectivity-module-2",count=1},
      {name="electric-furnace",count=noDesyncRandom(1,5)},
      {name="electric-mining-drill",count=noDesyncRandom(15,20)},
      {name="electronic-circuit",count=noDesyncRandom(100,200)},
      {name="express-splitter",count=noDesyncRandom(1,5)},
      {name="express-transport-belt",count=noDesyncRandom(10,50)},
      {name="express-underground-belt",count=4},
      {name="fast-inserter",count=noDesyncRandom(10,25)},
      {name="fast-splitter",count=noDesyncRandom(5,10)},
      {name="fast-transport-belt",count=noDesyncRandom(100,200)},
      {name="fast-underground-belt",count=6},
      {name="flame-thrower",count=1},
      {name="flamethrower-turret",count=noDesyncRandom(1,5)},
      {name="green-wire",count=noDesyncRandom(50,150)},
      {name="grenade",count=noDesyncRandom(10,15)},
      {name="gun-turret",count=noDesyncRandom(5,10)},
      {name="inserter",count=noDesyncRandom(20,30)},
      {name="iron-plate",count=noDesyncRandom(300,400)},
      {name="lab",count=noDesyncRandom(1,5)},
      {name="laser-turret",count=noDesyncRandom(1,5)},
      {name="oil-refinery",count=noDesyncRandom(1,3)},
      {name="piercing-rounds-magazine",count=noDesyncRandom(50,100)},
      {name="power-armor",count=1},
      {name="processing-unit",count=noDesyncRandom(10,15)},
      {name="productivity-module",count=noDesyncRandom(1,4)},
      {name="productivity-module-2",count=1},
      {name="rail",count=noDesyncRandom(150,200)},
      {name="red-wire",count=noDesyncRandom(50,150)},
      {name="repair-pack",count=noDesyncRandom(10,20)},
      {name="science-pack-1",count=noDesyncRandom(50,100)},
      {name="science-pack-2",count=noDesyncRandom(50,100)},
      {name="science-pack-3",count=noDesyncRandom(50,100)},
      {name="shotgun-shell",count=noDesyncRandom(5,30)},
      {name="small-lamp",count=noDesyncRandom(5,10)},
      {name="solid-fuel",count=noDesyncRandom(10,40)},
      {name="speed-module",count=noDesyncRandom(1,4)},
      {name="speed-module-2",count=1},
      {name="splitter",count=noDesyncRandom(5,10)},
      {name="steam-engine",count=noDesyncRandom(10,15)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=noDesyncRandom(1,5)},
      {name="steel-furnace",count=noDesyncRandom(5,15)},
      {name="steel-plate",count=noDesyncRandom(100,200)},
      {name="stone-brick",count=noDesyncRandom(50,100)},
      {name="stone-wall",count=noDesyncRandom(100,150)},
   }

   return possibilities[noDesyncRandom(#possibilities)] --return a random loot from the table above
end
