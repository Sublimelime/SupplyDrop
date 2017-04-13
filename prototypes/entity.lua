data:extend({
      {
         type = "container",
         name = "supply-chest",
         icon = "__base__/graphics/icons/wooden-chest.png",
         flags = {"not-blueprintable"},
         minable = {mining_time = 0.5, result = "iron-plate"},
         max_health = 10,
         corpse = "small-remnants",
         open_sound = { filename = "__base__/sound/wooden-chest-open.ogg", volume=0.65 },
         close_sound = { filename = "__base__/sound/wooden-chest-close.ogg", volume = 0.7 },
         resistances = {},
         collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
         selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
         fast_replaceable_group = "container",
         inventory_size = 30,
         vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
         picture =
            {
               filename = "__SupplyDrop__/graphics/entity/supply-chest.png",
               priority = "extra-high",
               width = 46,
               height = 33,
               shift = {0.25, 0.015625}
            },
         circuit_wire_connection_point =
            {
               shadow =
                  {
                     red = {0.734375, 0.453125},
                     green = {0.609375, 0.515625},
                  },
               wire =
                  {
                     red = {0.40625, 0.21875},
                     green = {0.40625, 0.375},
                  }
            },
         circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
         circuit_wire_max_distance = 0 --should prevent connecting to circuit network
      }
})
