facade = {}


--Register corbels.
--Node will be called facade:corbel_<subname>

function facade.register_corbel(subname, recipeitem, groups, images, description, sounds)
	groups.corbel = 1
minetest.register_node("facade:corbel" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.1875, -0.3125, -0.3125, 0.1875, 0.5, 0},
		}
	},
})
end


--Register corbel corners.
--Node will be called facade:corbel_corner_<subname>

function facade.register_corbel_corner(subname, recipeitem, groups, images, description, sounds)
	groups.corbel_corner = 1
minetest.register_node("facade:corbel_corner" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
			{0, -0.3125, -0.3125, 0.3125, 0.5, 0},
		}
	},
})
end


-- Corbels registration function.
-- Nodes will be called facade:{corbel,corbel_corner}_<subname>

function facade.register_corbel_and_corbel_corner(subname, recipeitem, groups, images, desc_corbel, desc_corbel_corner, sounds)
    facade.register_corbel(subname, recipeitem, groups, images, desc_corbel, sounds)
	facade.register_corbel_corner(subname, recipeitem, groups, images, desc_corbel_corner, sounds)
end


-- Register corbels

facade.register_corbel_and_corbel_corner("_clay_corbel", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png"},
		"Clay Corbel",
		"Clay Corbel Corner",
		default.node_sound_stone_defaults())


facade.register_corbel_and_corbel_corner("_desert_sandstone_corbel", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png"},
		"Desert Sandstone Corbel",
		"Desert Sandstone Corbel Corner",
		default.node_sound_stone_defaults())


facade.register_corbel_and_corbel_corner("_desert_stone_corbel", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png"},
		"Desert Stone Corbel",
		"Desert Stone Corbel Corner",
		default.node_sound_stone_defaults())


facade.register_corbel_and_corbel_corner("_sandstone_corbel", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png"},
		"Sandstone Corbel",
		"Sandstone Corbel Corner",
		default.node_sound_stone_defaults())


facade.register_corbel_and_corbel_corner("_silver_sandstone_corbel", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png"},
		"Silver Sandstone Corbel",
		"Silver Sandstone Corbel Corner",
		default.node_sound_stone_defaults())


facade.register_corbel_and_corbel_corner("_stone_corbel", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png"},
		"Stone Corbel",
		"Stone Corbel Corner",
		default.node_sound_stone_defaults())
