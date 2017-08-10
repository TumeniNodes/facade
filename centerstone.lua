facade = {}

-- Register centerstone
-- Node will be called facade:centerstone_<subname>

function facade.register_centerstone(subname, recipeitem, groups, images, description, sounds)
	groups.centerstone = 1
minetest.register_node("facade:centerstone" .. subname, {
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


-- Centerstone registration function.
-- Nodes will be called facade:{centerstone}_<subname>

--[[function facade.register_centerstone(subname, recipeitem, groups, images, desc_centerstone, sounds)
end]]--


-- Register centerstones

facade.register_centerstone("_clay_centerstone", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_clay.png^fcenterstone.png"},
        	"Clay Centerstone",
		default.node_sound_stone_defaults())

facade.register_centerstone("_desert_sandstone_centerstone", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_sandstone.png^fcenterstone.png"},
        	"Desert Sandstone Centerstone",
		default.node_sound_stone_defaults())

facade.register_centerstone("_desert_stone_centerstone", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_desert_stone.png^fcenterstone.png"},
        	"Desert Stone Centerstone",
		default.node_sound_stone_defaults())

facade.register_centerstone("_sandstone_centerstone", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_sandstone.png^fcenterstone.png"},
        	"Sandstone Centerstone",
		default.node_sound_stone_defaults())

facade.register_centerstone("_silver_sandstone_centerstone", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_silver_sandstone.png^fcenterstone.png"},
        	"Silver Sandstone Centerstone",
		default.node_sound_stone_defaults())

facade.register_centerstone("_stone_centerstone", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_stone.png^fcenterstone.png"},
        	"Stone Centerstone",
		default.node_sound_stone_defaults())
		
