function endGame()
   --[[
      This stage is from researching the rocket silo, onwards. This should encompass all sciences.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=math.random(10,20)},
      {name="advanced-circuit",count=math.random(100,150)},
      {name="alien-science-pack",count=math.random(50,100)},
      {name="assembling-machine-2",count=math.random(10,15)},
      {name="assembling-machine-3",count=math.random(10,15)},
      {name="cluster-grenade",count=math.random(20,30)},
      {name="coal",count=math.random(200,300)},
      {name="copper-plate",count=math.random(300,400)},
      {name="defender-capsule",count=math.random(100,150)},
      {name="destroyer-capsule",count=math.random(20,50)},
      {name="distractor-capsule",count=math.random(50,100)},
      {name="effectivity-module",count=math.random(1,5)},
      {name="effectivity-module-2",count=math.random(1,5)},
      {name="effectivity-module-3",count=1},
      {name="electric-furnace",count=math.random(5,10)},
      {name="electric-mining-drill",count=math.random(20,30)},
      {name="electronic-circuit",count=math.random(200,300)},
      {name="express-splitter",count=math.random(5,10)},
      {name="express-transport-belt",count=math.random(20,70)},
      {name="express-underground-belt",count=6},
      {name="fast-inserter",count=50},
      {name="fast-splitter",count=math.random(10,20)},
      {name="fast-transport-belt",count=math.random(150,250)},
      {name="fast-underground-belt",count=6},
      {name="flame-thrower",count=1},
      {name="green-wire",count=math.random(10,150)},
      {name="iron-plate",count=math.random(300,400)},
      {name="low-density-structure",count=math.random(1,5)},
      {name="piercing-rounds-magazine",count=math.random(100,200)},
      {name="piercing-shotgun-shell",count=math.random(10,30)},
      {name="power-armor",count=1},
      {name="processing-unit",count=math.random(20,50)},
      {name="productivity-module",count=math.random(1,5)},
      {name="productivity-module-2",count=math.random(1,5)},
      {name="productivity-module-3",count=1},
      {name="rail",count=math.random(100,200)},
      {name="red-wire",count=math.random(10,150)},
      {name="repair-pack",count=math.random(20,30)},
      {name="rocket-control-unit",count=math.random(1,5)},
      {name="rocket-fuel",count=math.random(1,10)},
      {name="science-pack-1",count=math.random(50,100)},
      {name="science-pack-2",count=math.random(50,100)},
      {name="science-pack-3",count=math.random(50,100)},
      {name="shotgun-shell",count=math.random(10,30)},
      {name="small-lamp",count=math.random(5,10)},
      {name="solar-panel",count=math.random(20,70)},
      {name="solid-fuel",count=math.random(20,50)},
      {name="speed-module",count=math.random(1,5)},
      {name="speed-module-2",count=math.random(1,5)},
      {name="speed-module-3",count=1},
      {name="steam-engine",count=math.random(10,20)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=math.random(5,10)},
      {name="steel-plate",count=math.random(100,200)},

   }

   return possibilities[math.random(#possibilities)] --return a random loot from the table above
end
