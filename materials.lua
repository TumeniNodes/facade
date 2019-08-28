-- Registration of materials

facade.register_facade_nodes("default", "clay", "default:clay", "Clay")
facade.register_facade_nodes("default", "stone", "default:stone", "Stone")
facade.register_facade_nodes("default", "desert_stone", "default:desert_stone", "Desert Stone")
facade.register_facade_nodes("default", "sandstone", "default:sandstone", "Sandstone")
facade.register_facade_nodes("default", "desert_sandstone", "default:desert_sandstone", "Desert Sandstone")
facade.register_facade_nodes("default", "silver_sandstone", "default:silver_sandstone", "Silver Sandstone")
--facade.register_facade_nodes("default", "obsidian", "default:obsidian", "Obsidian")


if minetest.get_modpath( "bakedclay") then
   local clay = {
      {"white", "White"},
      {"grey", "Grey"},
      {"black", "Black"},
      {"red", "Red"},
      {"yellow", "Yellow"},
      {"green", "Green"},
      {"cyan", "Cyan"},
      {"blue", "Blue"},
      {"magenta", "Magenta"},
      {"orange", "Orange"},
      {"violet", "Violet"},
      {"brown", "Brown"},
      {"pink", "Pink"},
      {"dark_grey", "Dark Grey"},
      {"dark_green", "Dark Green"},
   }

   for _, clay in pairs(clay) do
      facade.register_facade_nodes("baked_clay", clay[1] , "bakedclay:" .. clay[1], clay[2] .. " Baked Clay")
   end
end


if minetest.get_modpath( "darkage") then
	facade.register_facade_nodes("darkage", "basalt", "darkage:basalt", "Basalt")
	facade.register_facade_nodes("darkage", "chalk", "darkage:chalk", "Chalk")
	facade.register_facade_nodes("darkage", "gneiss", "darkage:gneiss", "Gneiss")
	facade.register_facade_nodes("darkage", "marble", "darkage:marble", "Marble")
	facade.register_facade_nodes("darkage", "ors", "darkage:ors", "Ors")
	facade.register_facade_nodes("darkage", "schist", "darkage:schist", "Schist")
	facade.register_facade_nodes("darkage", "serpentine", "darkage:serpentine", "Serpentine")
	facade.register_facade_nodes("darkage", "shale", "darkage:shale", "Shale")
	facade.register_facade_nodes("darkage", "slate", "darkage:slate", "Slate")
end


if minetest.get_modpath( "nether") then
	facade.register_facade_nodes("nether", "rack", "nether:rack", "Netherrack")
end


--[[if minetest.get_modpath( "lapis") then
	facade.register_facade_nodes("lapis", "lapis_block", "lapis:lapis_block", "Lapis")
	facade.register_facade_nodes("lapis", "lapis_lazurite", "lapis:lazurite", "Lazurite")
end]]--
