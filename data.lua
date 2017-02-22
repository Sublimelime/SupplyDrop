require("prototypes.entity")

local supply_fire = table.deepcopy(data.raw["fire"]["fire-flame"]) --create a copy of an existing entity
supply_fire.name = "supply-fire"
supply_fire.damage_per_tick = {amount = 0, type="fire"} --harmless
supply_fire.duration = 3600
--supply_fire.initial_lifetime = 5000
supply_fire.maximum_spread_count = 0 --no spreading
supply_fire.emissions_per_tick = 0
supply_fire.light = {intensity = 0.4, size = 15} --glow slightly
supply_fire.burnt_patch_lifetime = 7000

data:extend{supply_fire} --add it to the game
