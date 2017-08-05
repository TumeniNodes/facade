facade = {}

--Register columns.
--Node will be called facade:column_<subname>

function facade.register_column(subname, recipeitem, groups, images, description, sounds)
	groups.column = 1
minetest.register_node("facade:column" .. subname, {
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


--Register column corners.
--Node will be called facade:column_corner_<subname>

function facade.register_column_corner(subname, recipeitem, groups, images, description, sounds)
	groups.column_corner = 1
minetest.register_node("facade:column_corner" .. subname, {
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


-- Columns registration function.
-- Nodes will be called facade:{column,column_corner}_<subname>

function facade.register_column_and_column_corner(subname, recipeitem, groups, images, desc_column, desc_column_corner, sounds)
    facade.register_column(subname, recipeitem, groups, images, desc_column, sounds)
	facade.register_column_corner(subname, recipeitem, groups, images, desc_column_corner, sounds)
end


-- Register columns

facade.register_column("_clay_column", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png", "default_clay.png",
        "default_clay.png", "default_clay.png",
        "default_clay.png", "clay_column.png"},
		"Clay Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_clay_column_corner", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png", "default_clay.png",
        "clay_column.png", "clay_column.png",
        "clay_column.png", "clay_column.png"},
		"Clay Column Corner",
		default.node_sound_stone_defaults())


facade.register_column("_desert_sandstone_column", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png", "default_desert_sandstone.png",
        "default_desert_sandstone.png", "default_desert_sandstone.png",
        "default_desert_sandstone.png", "desert_sandstone_column.png"},
		"Desert Sandstone Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_desert_sandstone_column_corner", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png", "default_desert_sandstone.png",
        "desert_sandstone_column.png", "desert_sandstone_column.png",
        "desert_sandstone_column.png", "desert_sandstone_column.png"},
		"Desert Sandstone Column Corner",
		default.node_sound_stone_defaults())


facade.register_column("_desert_stone_column", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png", "default_desert_stone.png",
        "default_desert_stone.png", "default_desert_stone.png",
        "default_desert_stone.png", "desert_stone_column.png"},
		"Desert Stone Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_desert_stone_column_corner", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png", "default_desert_stone.png",
        "desert_stone_column.png", "desert_stone_column.png",
        "desert_stone_column.png", "desert_stone_column.png"},
		"Desert Stone Column Corner",
		default.node_sound_stone_defaults())


facade.register_column("_sandstone_column", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png", "default_sandstone.png",
        "default_sandstone.png", "default_sandstone.png",
        "default_sandstone.png", "sandstone_column.png"},
		"Sandstone Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_sandstone_column_corner", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png", "default_sandstone.png",
        "sandstone_column.png", "sandstone_column.png",
        "sandstone_column.png", "sandstone_column.png"},
		"Sandstone Column Corner",
		default.node_sound_stone_defaults())


facade.register_column("_silver_sandstone_column", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png", "default_silver_sandstone.png",
        "default_silver_sandstone.png", "default_silver_sandstone.png",
        "default_silver_sandstone.png", "silver_sandstone_column.png"},
		"Silver Sandstone Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_silver_sandstone_column_corner", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png", "default_silver_sandstone.png",
        "silver_sandstone_column.png", "silver_sandstone_column.png",
        "silver_sandstone_column.png", "silver_sandstone_column.png"},
		"Silver Sandstone Column Corner",
		default.node_sound_stone_defaults())


facade.register_column("_stone_column", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png", "default_stone.png",
        "default_stone.png", "default_stone.png",
        "default_stone.png", "stone_column.png"},
		"Stone Column",
		default.node_sound_stone_defaults())

facade.register_column_corner("_stone_column_corner", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png", "default_stone.png",
        "stone_column.png", "stone_column.png",
        "stone_column.png", "stone_column.png"},
		"Stone Column Corner",
		default.node_sound_stone_defaults())		
