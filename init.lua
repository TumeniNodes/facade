facade = {}

------------------
--Bannerstones
------------------
--Node will be called facade:bannerstone_<subname>
function facade.register_bannerstone(subname, recipeitem, description)
minetest.register_node("facade:bannerstone_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png^facade_bannerstone.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5625, 0.5, 0.375, -0.5},
			{-0.5, -0.375, -0.5625, 0.5, -0.25, -0.5},
		},
	},
--  	selection_box = {
--  		type = "fixed",
--  		fixed = {
--  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--  		}
--  	},
})
end

--Node will be called facade:bannerstone_corner_<subname>
function facade.register_bannerstone_corner(subname, recipeitem, description)
minetest.register_node("facade:bannerstone_corner_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png^facade_bannerstone.png",
	"default_" .. subname .. ".png^facade_bannerstone.png",
	"default_" .. subname .. ".png^facade_bannerstone.png",
	"default_" .. subname .. ".png^facade_bannerstone.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5625, 0.25, -0.5625, 0.5625, 0.375, 0.5625},
			{-0.5625, -0.375, -0.5625, 0.5625, -0.25, 0.5625},
		},
	},
--  	selection_box = {
--  		type = "fixed",
--  		fixed = {
--  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--  		}
--  	},
})
end

------------------
--Centerstones
------------------
--Node will be called facade:centerstone_<subname>
function facade.register_centerstone(subname, recipeitem, description)
minetest.register_node("facade:centerstone_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {"" .. modname.. "_" .. subname .. ".png^facade_centerstone.png",
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.5, -0.25, 0.0625, 0.5, 0.25, 0.25},
			{-0.5, -0.25, -0.25, 0.5, 0.25, -0.0625},
			{-0.25, -0.25, -0.5, -0.0625, 0.25, 0.5},
			{0.0625, -0.25, -0.5, 0.25, 0.25, 0.5},
			{-0.5, 0.0625, -0.25, 0.5, 0.25, 0.25},
			{-0.5, -0.25, -0.25, 0.5, -0.0625, 0.25},
			{-0.25, -0.25, -0.5, 0.25, -0.0625, 0.5},
			{-0.25, 0.0625, -0.5, 0.25, 0.25, 0.5},
			{-0.25, -0.5, -0.25, 0.25, 0.5, -0.0625},
			{-0.25, -0.5, 0.0625, 0.25, 0.5, 0.25},
			{0.0625, -0.5, -0.1875, 0.25, 0.5, 0.1875},
			{-0.25, -0.5, -0.1875, -0.0625, 0.5, 0.1875},
			{-0.5, 0.3125, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, 0.3125, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, 0.3125, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.3125, -0.5, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, -0.3125, 0.5},
			{0.3125, -0.5, -0.5, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.3125, -0.3125},
			{-0.5, -0.5, 0.3125, 0.5, -0.3125, 0.5},
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125},
		},
	},
  	selection_box = {
  		type = "fixed",
  		fixed = {
  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
  		}
  	},
})
end

------------
--Columns
------------
--Node will be called facade:column_<subname>
function facade.register_column(subname, recipeitem, description)
minetest.register_node("facade:column_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png^facade_column.png",
	"default_" .. subname .. ".png^facade_column.png",
	"default_" .. subname .. ".png^facade_column.png",
	"default_" .. subname .. ".png^facade_column.png",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, 0.5, 0.4375},
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5},
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.0625, -0.5, -0.5, 0.1875, 0.5, 0.5},
			{-0.1875, -0.5, -0.5, -0.0625, 0.5, 0.5},
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.1875},
			{-0.5, -0.5, -0.1875, 0.5, 0.5, -0.0625},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
})
end

--Node will be called facade:column_corner_<subname>
function facade.register_column_corner(subname, recipeitem, description)
minetest.register_node("facade:column_corner_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png",
	"default_" .. subname .. ".png^facade_column.png",
	"default_" .. subname .. ".png^facade_column.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.4375, 0.5, 0.5, 0.4375},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, 0.5},
			{0.3125, -0.5, -0.5, 0.5, 0.5, 0.5},
			{0.0625, -0.5, -0.5, 0.1875, 0.5, 0.5},
			{-0.1875, -0.5, -0.5, -0.0625, 0.5, 0.5},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
})
end

------------
--Corbels
------------
--Node will be called facade:corbel_<subname>
function facade.register_corbel(subname, recipeitem, description)
minetest.register_node("facade:corbel_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {"default_" .. subname ..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.1875, -0.3125, -0.3125, 0.1875, 0.5, 0},
		},
	},
--  	selection_box = {
--  		type = "fixed",
--  		fixed = {
--  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--  		}
--  	},
})
end

--Node will be called facade:corbel_corner_<subname>
function facade.register_corbel_corner(subname, recipeitem, description)
minetest.register_node("facade:corbel_corner_" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {"default_" .. subname ..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
			{0, -0.3125, -0.3125, 0.3125, 0.5, 0},
		},
	},
--  	selection_box = {
--  		type = "fixed",
--  		fixed = {
--  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--  		}
--  	},
})
end

--Node will be called facade:corbel_corner_inner_<subname>
function facade.register_corbel_corner_inner(subname, recipeitem, description)
minetest.register_node("facade:corbel_corner_inner" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = {"default_" .. subname ..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			{0, -0.3125, -0.3125, 0.3125, 0.5, 0},
			{-0.5, -0.5, -0.5, 0, 0.5, 0.5},
		},
	},
--  	selection_box = {
--  		type = "fixed",
--  		fixed = {
--  			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--  		}
--  	},
})
end


-------------------------------
--Register Nodes/Materials
-------------------------------
function facade.register_facade_nodes(subname, recipeitem, desc_bannerstone, desc_bannerstone_corner, desc_centerstone, desc_column, desc_column_corner, desc_corbel, desc_corbel_corner, desc_corbel_corner_inner)
facade.register_bannerstone(subname, recipeitem, desc_bannerstone)
facade.register_bannerstone_corner(subname, recipeitem, desc_bannerstone_corner)
facade.register_centerstone(subname, recipeitem, desc_centerstone)
facade.register_column(subname, recipeitem, desc_column)
facade.register_column_corner(subname, recipeitem, desc_column_corner)
facade.register_corbel(subname, recipeitem, desc_corbel)
facade.register_corbel_corner(subname, recipeitem, desc_corbel_corner)
facade.register_corbel_corner_inner(subname, recipeitem, desc_corbel_corner_inner)
end


facade.register_facade_nodes("clay", "default:clay", "Clay Bannerstone", "Clay Bannerstone Corner", "Clay Centerstone", "Clay Column", "Clay Column Corner", "Clay Corbel", "Clay Corbel Corner", "Clay Corbel Inner Corner")
facade.register_facade_nodes("desert_sandstone", "default:desert_sandstone", "Desert Sandstone Bannerstone", "Desert Sandstone Bannerstone Corner", "Desert Sandstone Centerstone", "Desert Sandstone Column", "Desert Sandstone Column Corner", "Desert Sandstone Corbel", "Desert Sandstone Corbel Corner", "Desert Sandstone Corbel Inner Corner")
facade.register_facade_nodes("desert_stone", "default:desert_stone", "Desert Stone Bannerstone", "Desert Stone Bannerstone Corner", "Desert Stone Centerstone", "Desert Stone Column", "Desert Stone Column Corner", "Desert Stone Corbel", "Desert Stone Corbel Corner", "Desert Stone Corbel Inner Corner")
facade.register_facade_nodes("sandstone", "default:sandstone", "Sandstone Bannerstone", "Sandstone Bannerstone Corner", "Sandstone Centerstone", "Sandstone Column", "Sandstone Column Corner", "Sandstone Corbel", "Sandstone Corbel Corner", "Sandstone Corbel Inner Corner")
facade.register_facade_nodes("silver_sandstone", "default:silver_sandstone", "Silver Sandstone Bannerstone", "Silver Sandstone Bannerstone Corner", "Silver Sandstone Centerstone", "Silver Sandstone Column", "Silver Sandstone Column Corner", "Silver Sandstone Corbel", "Silver Sandstone Corbel Corner", "Silver Sandstone Corbel Inner Corner")
facade.register_facade_nodes("stone", "default:stone", "Stone Bannerstone", "Stone Bannerstone Corner", "Stone Centerstone", "Stone Column", "Stone Column Corner", "Stone Corbel", "Stone Corbel Corner", "Stone Corbel Inner Corner")

