function stageTwo()

   --[[
      This stage is from researching oil processing until the player has researched advanced oil processing. This should encompass red, green and some blue science.
      If you'd like to modify the loot table, just modify possibilities below.
      Do note that there is anti-duplication checking, so putting multiple entries of the same item only increases the initial probability,
      all further inserts are blocked.
   --]]

   local possibilities = {

      {name="accumulator",count=math.random(1,5)},
      {name="assembling-machine-2",count=math.random(1,5)},
      {name="coal",count=math.random(200,300)},
      {name="copper-plate",count=math.random(200,300)},
      {name="defender-capsule",count=math.random(10,50)},
      {name="electronic-circuit",count=math.random(100,200)},
      {name="fast-inserter",count=math.random(15,25)},
      {name="fast-splitter",count=math.random(5,10)},
      {name="fast-transport-belt",count=math.random(50,100)},
      {name="fast-underground-belt",count=4},
      {name="green-wire",count=math.random(10,50)},
      {name="grenade",count=math.random(5,10)},
      {name="heavy-armor",count=1},
      {name="inserter",count=math.random(20,30)},
      {name="iron-plate",count=math.random(200,300)},
      {name="lab",count=math.random(1,5)},
      {name="piercing-rounds-magazine",count=math.random(5,30)},
      {name="power-armor",count=1},
      {name="rail",count=math.random(50,150)},
      {name="red-wire",count=math.random(10,50)},
      {name="repair-pack",count=math.random(5,10)},
      {name="science-pack-1",count=math.random(5,50)},
      {name="science-pack-2",count=math.random(5,50)},
      {name="science-pack-3",count=math.random(5,20)},
      {name="shotgun",count=1},
      {name="shotgun-shell",count=math.random(5,30)},
      {name="small-lamp",count=math.random(5,10)},
      {name="splitter",count=math.random(10,15)},
      {name="steam-engine",count=math.random(5,10)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=math.random(1,5)},
      {name="steel-furnace",count=math.random(5,15)},
      {name="steel-plate",count=math.random(70,150)},
      {name="stone-brick",count=math.random(50,100)},
      {name="stone-wall",count=math.random(20,50)},
      {name="submachine-gun",count=1},
      {name="transport-belt",count=math.random(100,200)},
      {name="underground-belt",count=6},
      {name="electric-mining-drill",count=math.random(5,15)},

   }

   return possibilities[math.random(#possibilities)] --return a random loot from the table above
end
