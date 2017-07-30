facade = {}

--Register bannerstones.
--Node will be called facade:bannerstone_<subname>

function facade.register_bannerstone(subname, recipeitem, groups, images, description, sounds)
	groups.bannerstone = 1
minetest.register_node("facade:bannerstone" .. subname, {
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
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5625, 0.5, 0.375, -0.5},
			{-0.5, -0.375, -0.5625, 0.5, -0.25, -0.5},
		}
	},
})
end


--Register bannerstones.
--Node will be called facade:bannerstone_corner_<subname>

function facade.register_bannerstone_corner(subname, recipeitem, groups, images, description, sounds)
	groups.bannerstone_corner = 1
minetest.register_node("facade:bannerstone_corner" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5625, 0.25, -0.5625, 0.5625, 0.375, 0.5625},
			{-0.5625, -0.375, -0.5625, 0.5625, -0.25, 0.5625},
		}
	},
})
end


-- Bannerstones registration function.
-- Nodes will be called facade:{bannerstone,bannerstone_corner}_<subname>

function facade.register_bannerstone_and_bannerstone_corner(subname, recipeitem, groups, images, desc_bannerstone, desc_bannerstone_corner, sounds)
    facade.register_bannerstone(subname, recipeitem, groups, images, desc_bannerstone, sounds)
	facade.register_bannerstone_corner(subname, recipeitem, groups, images, desc_bannerstone_corner, sounds)
end


-- Register bannerstones

facade.register_bannerstone("_clay_bannerstone", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png", "default_clay.png",
        "default_clay.png", "default_clay.png",
        "default_clay.png", "clay_bannerstone.png"},
		"Clay Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_clay_bannerstone_corner", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png", "default_clay.png",
        "clay_bannerstone.png", "clay_bannerstone.png",
        "clay_bannerstone.png", "clay_bannerstone.png"},
		"Clay Bannerstone Corner",
		default.node_sound_stone_defaults())


facade.register_bannerstone("_desert_sandstone_bannerstone", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png", "default_desert_sandstone.png",
        "default_desert_sandstone.png", "default_desert_sandstone.png",
        "default_desert_sandstone.png", "desert_sandstone_bannerstone.png"},
		"Desert Sandstone Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_desert_sandstone_bannerstone_corner", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png", "default_desert_sandstone.png",
        "desert_sandstone_bannerstone.png", "desert_sandstone_bannerstone.png",
        "desert_sandstone_bannerstone.png", "desert_sandstone_bannerstone.png"},
		"Desert Sandstone Bannerstone Corner",
		default.node_sound_stone_defaults())


facade.register_bannerstone("_desert_stone_bannerstone", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png", "default_desert_stone.png",
        "default_desert_stone.png", "default_desert_stone.png",
        "default_desert_stone.png", "desert_stone_bannerstone.png"},
		"Desert Stone Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_desert_stone_bannerstone_corner", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png", "default_desert_stone.png",
        "desert_stone_bannerstone.png", "desert_stone_bannerstone.png",
        "desert_stone_bannerstone.png", "desert_stone_bannerstone.png"},
		"Desert Stone Bannerstone Corner",
		default.node_sound_stone_defaults())


facade.register_bannerstone("_sandstone_bannerstone", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png", "default_sandstone.png",
        "default_sandstone.png", "default_sandstone.png",
        "default_sandstone.png", "sandstone_bannerstone.png"},
		"Sandstone Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_sandstone_bannerstone_corner", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png", "default_sandstone.png",
        "sandstone_bannerstone.png", "sandstone_bannerstone.png",
        "sandstone_bannerstone.png", "sandstone_bannerstone.png"},
		"Sandstone Bannerstone Corner",
		default.node_sound_stone_defaults())


facade.register_bannerstone("_silver_sandstone_bannerstone", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png", "default_silver_sandstone.png",
        "default_silver_sandstone.png", "default_silver_sandstone.png",
        "default_silver_sandstone.png", "silver_sandstone_bannerstone.png"},
		"Silver Sandstone Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_silver_sandstone_bannerstone_corner", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png", "default_silver_sandstone.png",
        "silver_sandstone_bannerstone.png", "silver_sandstone_bannerstone.png",
        "silver_sandstone_bannerstone.png", "silver_sandstone_bannerstone.png"},
		"Silver Sandstone Bannerstone Corner",
		default.node_sound_stone_defaults())


facade.register_bannerstone("_stone_bannerstone", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png", "default_stone.png",
        "default_stone.png", "default_stone.png",
        "default_stone.png", "stone_bannerstone.png"},
		"Stone Bannerstone",
		default.node_sound_stone_defaults())

facade.register_bannerstone_corner("_stone_bannerstone_corner", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png", "default_stone.png",
        "stone_bannerstone.png", "stone_bannerstone.png",
        "stone_bannerstone.png", "stone_bannerstone.png"},
		"Stone Bannerstone Corner",
		default.node_sound_stone_defaults())		
