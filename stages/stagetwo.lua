function stageTwo()

   local possibilities = {

      {name="accumulator",count=1},
      {name="assembling-machine-2",count=math.random(1,5)},
      {name="coal",count=math.random(200,300)},
      {name="copper-plate",count=math.random(200,300)},
      {name="electronic-circuit",count=math.random(30,70)},
      {name="fast-inserter",count=math.random(5,15)},
      {name="fast-splitter",count=math.random(1,5)},
      {name="fast-transport-belt",count=math.random(50,100)},
      {name="fast-underground-belt",count=4},
      {name="grenade",count=math.random(5,10)},
      {name="heavy-armor",count=1},
      {name="inserter",count=math.random(10,20)},
      {name="iron-plate",count=math.random(200,300)},
      {name="lab",count=math.random(1,5)},
      {name="light-armor",count=1},
      {name="piercing-rounds-magazine",count=math.random(5,30)},
      {name="raw-fish",count=math.random(1,7)},
      {name="raw-wood",count=100},
      {name="repair-pack",count=math.random(5,10)},
      {name="repair-pack",count=math.random(5,10)},
      {name="science-pack-1",count=math.random(5,50)},
      {name="science-pack-2",count=math.random(5,50)},
      {name="shotgun",count=1},
      {name="shotgun-shell",count=math.random(5,30)},
      {name="shotgun-shell",count=math.random(5,30)},
      {name="small-lamp",count=math.random(5,10)},
      {name="splitter",count=math.random(1,5)},
      {name="splitter",count=math.random(1,5)},
      {name="steam-engine",count=math.random(1,5)},
      {name="steel-axe",count=1},
      {name="steel-chest",count=math.random(1,5)},
      {name="steel-furnace",count=math.random(5,15)},
      {name="steel-plate",count=math.random(70,150)},
      {name="stone",count=math.random(100,200)},
      {name="stone-brick",count=math.random(50,100)},
      {name="stone-wall",count=math.random(20,50)},
      {name="submachine-gun",count=1},
      {name="transport-belt",count=math.random(100,200)},
      {name="underground-belt",count=6},
      {name="rail",count=math.random(50,150)},


   }

   return possibilities[math.random(#possibilities)] --return a random loot from the table above
end
