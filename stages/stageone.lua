function stageOne()

   local possibilities = {
      {name="iron-plate",count=math.random(100,200)},
      {name="copper-plate",count=math.random(100,200)},
      {name="assembling-machine-1",count=math.random(1,5)},
      {name="inserter",count=math.random(5,15)},
      {name="stone-furnace",count=math.random(5,15)},
      {name="raw-wood",count=100},
      {name="raw-fish",count=math.random(1,7)},
      {name="grenade",count=math.random(1,5)},
      {name="iron-axe",count=1},
      {name="lab",count=math.random(1,5)},
      {name="transport-belt",count=math.random(100,200)},
      {name="splitter",count=math.random(1,5)},
      {name="firearm-magazine",count=math.random(5,30)},
      {name="repair-pack",count=math.random(5,10)},
      {name="science-pack-1",count=math.random(5,50)},
      {name="shotgun-shell",count=math.random(5,30)},
      {name="steam-engine",count=1},
      {name="stone",count=math.random(100,200)},
      {name="coal",count=math.random(100,200)},
      {name="stone-wall",count=math.random(10,30)},
      {name="stone-brick",count=math.random(50,100)},
      {name="underground-belt",count=6},
      {name="small-lamp",count=math.random(5,10)},
      {name="pistol",count=1},
      {name="burner-inserter",count=math.random(5,15)},
      {name="electronic-circuit",count=math.random(10,50)},
      {name="light-armor",count=1},
      {name="iron-chest",count=math.random(1,5)},

   }

   return possibilities[math.random(#possibilities)] --return a random loot from the table above
end
