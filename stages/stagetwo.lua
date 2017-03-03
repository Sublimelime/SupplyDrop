function stageTwo()

   --[[
      This stage is from researching oil processing until the player has researched advanced oil processing. This should encompass red, green and some blue science.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=noDesyncRandom(1,5)},
      {name="assembling-machine-2",count=noDesyncRandom(1,5)},
      {name="coal",count=noDesyncRandom(200,300)},
      {name="copper-plate",count=noDesyncRandom(200,300)},
      {name="defender-capsule",count=noDesyncRandom(10,50)},
      {name="electronic-circuit",count=noDesyncRandom(100,200)},
      {name="fast-inserter",count=noDesyncRandom(15,25)},
      {name="fast-splitter",count=noDesyncRandom(5,10)},
      {name="fast-transport-belt",count=noDesyncRandom(50,100)},
      {name="fast-underground-belt",count=4},
      {name="green-wire",count=noDesyncRandom(10,50)},
      {name="grenade",count=noDesyncRandom(5,10)},
      {name="heavy-armor",count=1},
      {name="inserter",count=noDesyncRandom(20,30)},
      {name="iron-plate",count=noDesyncRandom(200,300)},
      {name="lab",count=noDesyncRandom(1,5)},
      {name="piercing-rounds-magazine",count=noDesyncRandom(5,30)},
      {name="power-armor",count=1},
      {name="rail",count=noDesyncRandom(50,150)},
      {name="red-wire",count=noDesyncRandom(10,50)},
      {name="repair-pack",count=noDesyncRandom(5,10)},
      {name="science-pack-1",count=noDesyncRandom(5,50)},
      {name="science-pack-2",count=noDesyncRandom(5,50)},
      {name="science-pack-3",count=noDesyncRandom(5,20)},
      {name="shotgun",count=1},
      {name="shotgun-shell",count=noDesyncRandom(5,30)},
      {name="small-lamp",count=noDesyncRandom(5,10)},
      {name="splitter",count=noDesyncRandom(10,15)},
      {name="steam-engine",count=noDesyncRandom(5,10)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=noDesyncRandom(1,5)},
      {name="steel-furnace",count=noDesyncRandom(5,15)},
      {name="steel-plate",count=noDesyncRandom(70,150)},
      {name="stone-brick",count=noDesyncRandom(50,100)},
      {name="stone-wall",count=noDesyncRandom(20,50)},
      {name="submachine-gun",count=1},
      {name="transport-belt",count=noDesyncRandom(100,200)},
      {name="underground-belt",count=6},
      {name="electric-mining-drill",count=noDesyncRandom(5,15)},

   }

   return possibilities[noDesyncRandom(#possibilities)] --return a random loot from the table above
end
