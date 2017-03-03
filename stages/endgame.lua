function endGame()
   --[[
      This stage is from researching the rocket silo, onwards. This should encompass all sciences.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=noDesyncRandom(10,20)},
      {name="advanced-circuit",count=noDesyncRandom(100,150)},
      {name="alien-science-pack",count=noDesyncRandom(50,100)},
      {name="assembling-machine-2",count=noDesyncRandom(10,15)},
      {name="assembling-machine-3",count=noDesyncRandom(10,15)},
      {name="cluster-grenade",count=noDesyncRandom(20,30)},
      {name="coal",count=noDesyncRandom(200,300)},
      {name="copper-plate",count=noDesyncRandom(300,400)},
      {name="defender-capsule",count=noDesyncRandom(100,150)},
      {name="destroyer-capsule",count=noDesyncRandom(20,50)},
      {name="distractor-capsule",count=noDesyncRandom(50,100)},
      {name="effectivity-module",count=noDesyncRandom(1,5)},
      {name="effectivity-module-2",count=noDesyncRandom(1,5)},
      {name="effectivity-module-3",count=1},
      {name="electric-furnace",count=noDesyncRandom(5,10)},
      {name="electric-mining-drill",count=noDesyncRandom(20,30)},
      {name="electronic-circuit",count=noDesyncRandom(200,300)},
      {name="express-splitter",count=noDesyncRandom(5,10)},
      {name="express-transport-belt",count=noDesyncRandom(20,70)},
      {name="express-underground-belt",count=6},
      {name="fast-inserter",count=50},
      {name="fast-splitter",count=noDesyncRandom(10,20)},
      {name="fast-transport-belt",count=noDesyncRandom(150,250)},
      {name="fast-underground-belt",count=6},
      {name="flame-thrower",count=1},
      {name="green-wire",count=noDesyncRandom(10,150)},
      {name="iron-plate",count=noDesyncRandom(300,400)},
      {name="low-density-structure",count=noDesyncRandom(1,5)},
      {name="piercing-rounds-magazine",count=noDesyncRandom(100,200)},
      {name="piercing-shotgun-shell",count=noDesyncRandom(10,30)},
      {name="power-armor",count=1},
      {name="processing-unit",count=noDesyncRandom(20,50)},
      {name="productivity-module",count=noDesyncRandom(1,5)},
      {name="productivity-module-2",count=noDesyncRandom(1,5)},
      {name="productivity-module-3",count=1},
      {name="rail",count=noDesyncRandom(100,200)},
      {name="red-wire",count=noDesyncRandom(10,150)},
      {name="repair-pack",count=noDesyncRandom(20,30)},
      {name="rocket-control-unit",count=noDesyncRandom(1,5)},
      {name="rocket-fuel",count=noDesyncRandom(1,10)},
      {name="science-pack-1",count=noDesyncRandom(50,100)},
      {name="science-pack-2",count=noDesyncRandom(50,100)},
      {name="science-pack-3",count=noDesyncRandom(50,100)},
      {name="shotgun-shell",count=noDesyncRandom(10,30)},
      {name="small-lamp",count=noDesyncRandom(5,10)},
      {name="solar-panel",count=noDesyncRandom(20,70)},
      {name="solid-fuel",count=noDesyncRandom(20,50)},
      {name="speed-module",count=noDesyncRandom(1,5)},
      {name="speed-module-2",count=noDesyncRandom(1,5)},
      {name="speed-module-3",count=1},
      {name="steam-engine",count=noDesyncRandom(10,20)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=noDesyncRandom(5,10)},
      {name="steel-plate",count=noDesyncRandom(100,200)},

   }

   return possibilities[noDesyncRandom(#possibilities)] --return a random loot from the table above
end
