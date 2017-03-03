function stageOne()
   --[[
      This stage is from the start of the game to researching oil processing. This should encompass red and some green science.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {
      {name="iron-plate",count=noDesyncRandom(100,200)},
      {name="copper-plate",count=noDesyncRandom(100,200)},
      {name="assembling-machine-1",count=noDesyncRandom(1,5)},
      {name="inserter",count=noDesyncRandom(5,15)},
      {name="stone-furnace",count=noDesyncRandom(5,15)},
      {name="raw-wood",count=100},
      {name="raw-fish",count=noDesyncRandom(1,7)},
      {name="grenade",count=noDesyncRandom(1,5)},
      {name="iron-axe",count=1},
      {name="steel-axe",count=1},
      {name="lab",count=noDesyncRandom(1,5)},
      {name="transport-belt",count=noDesyncRandom(100,200)},
      {name="splitter",count=noDesyncRandom(1,5)},
      {name="firearm-magazine",count=noDesyncRandom(5,30)},
      {name="repair-pack",count=noDesyncRandom(5,10)},
      {name="science-pack-1",count=noDesyncRandom(5,50)},
      {name="science-pack-2",count=noDesyncRandom(5,20)},
      {name="shotgun-shell",count=noDesyncRandom(5,30)},
      {name="steam-engine",count=1},
      {name="stone",count=noDesyncRandom(100,200)},
      {name="coal",count=noDesyncRandom(100,200)},
      {name="stone-wall",count=noDesyncRandom(10,30)},
      {name="stone-brick",count=noDesyncRandom(50,100)},
      {name="underground-belt",count=6},
      {name="small-lamp",count=noDesyncRandom(5,10)},
      {name="pistol",count=1},
      {name="burner-inserter",count=noDesyncRandom(5,15)},
      {name="burner-mining-drill",count=noDesyncRandom(1,5)},
      {name="electric-mining-drill",count=noDesyncRandom(1,5)},
      {name="electronic-circuit",count=noDesyncRandom(10,50)},
      {name="light-armor",count=1},
      {name="iron-chest",count=noDesyncRandom(1,5)},

   }

   return possibilities[noDesyncRandom(#possibilities)] --return a random loot from the table above
end
