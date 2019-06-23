-- Node (shape) definition and registration

local wehavechisels =  minetest.get_modpath("mychisel")

--------------
--Bannerstones
--------------

--Node will be called facade:<subname>_bannerstone
function facade.register_bannerstone(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_bannerstone" , {
		description = desc .. " Bannerstone",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_bannerstone.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-0.5, 0.25, -0.5625, 0.5, 0.375, -0.5},
				{-0.5, -0.375, -0.5625, 0.5, -0.25, -0.5},
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

--Node will be called facade:<subname>_bannerstone_corner
function facade.register_bannerstone_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_bannerstone_corner", {
		description = desc .. " Bannerstone Corner",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_bannerstone.png",
		"" .. modname.. "_" .. subname .. ".png^facade_bannerstone.png",
		"" .. modname.. "_" .. subname .. ".png^facade_bannerstone.png",
		"" .. modname.. "_" .. subname .. ".png^facade_bannerstone.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
				{-0.5625, 0.25, -0.5625, 0.5625, 0.375, 0.5625},
				{-0.5625, -0.375, -0.5625, 0.5625, -0.25, 0.5625},
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

--------------
--Centerstones
--------------

--Node will be called facade:<subname>_centerstone
function facade.register_centerstone(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_centerstone", {
		description = desc .. " Centerstone",
		drawtype = "nodebox",
		tiles = {"" .. modname.. "_" .. subname .. ".png^facade_centerstone.png"},
		paramtype = "light",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
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

---------
--Columns
---------

--Node will be called facade:<subname>_column
function facade.register_column(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_column" , {
		description = desc .. " Column",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png"
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
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


--Node will be called facade:<subname>_column_corner
function facade.register_column_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_column_corner", {
		description = desc .. " Column Corner",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png",
		"" .. modname.. "_" .. subname .. ".png^facade_column.png"
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
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

---------
--Corbels
---------

--Node will be called facade:<subname>_corbel
function facade.register_corbel(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_corbel", {
		description = desc .. " Corbel",
		drawtype = "nodebox",
		tiles = {"" .. modname.. "_" .. subname .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.1875, -0.3125, -0.3125, 0.1875, 0.5, 0},
			},
		},
--			selection_box = {
--				type = "fixed",
--				fixed = {
--					{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--				}
--			},
	})
end

--Node will be called facade:<subname>_corbel_corner
function facade.register_corbel_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_corbel_corner", {
		description = desc .. " Corbel Corner",
		drawtype = "nodebox",
		tiles = {"" .. modname.. "_" .. subname .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0.5, 0.5},
				{0, -0.3125, -0.3125, 0.3125, 0.5, 0},
			},
		},
--			selection_box = {
--				type = "fixed",
--				fixed = {
--					{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--				}
--			},
	})
end

--Node will be called facade:<subname>_corbel_corner_inner
function facade.register_corbel_corner_inner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_corbel_corner_inner", {
		description = desc .. " Corbel Inner Corner",
		drawtype = "nodebox",
		tiles = {"" .. modname.. "_" .. subname .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
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
--			selection_box = {
--				type = "fixed",
--				fixed = {
--					{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--				}
--			},
	})
end


--------------------------
--- Carved Stones
--------------------------

--Node will be called facade:<subname>_carved_stone_a
function facade.register_carved_stone_a(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_carved_stone_a", {
		description = desc .. " Carved Stone A",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_carved_stone_a.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.4375, 0.5, 0.5, 0.5},
				{-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.4375, -0.375, -0.5, -0.3125, 0.375, -0.4375},
				{-0.5, -0.375, -0.5, -0.3125, -0.25, 0.5},
				{-0.4375, 0.25, -0.5, 0.4375, 0.375, 0.5},
				{0.3125, -0.125, -0.5, 0.4375, 0.25, 0.5},
				{-0.1875, -0.375, -0.5, 0.5, -0.25, 0.5},
				{-0.1875, -0.25, -0.5, -0.0625, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.3125, 0, 0.5},
				{-0.0625, 0, -0.5, 0.1875, 0.125, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})
end

--Node will be called facade:<subname>_carved_stone_a_corner
function facade.register_carved_stone_a_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_carved_stone_a_corner", {
		description = desc .. " Carved Stone A Corner",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_carved_stone_a.png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_carved_stone_a.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4375, -0.5, -0.4375, 0.5, 0.5, 0.5},
				{-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375},
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.4375, -0.375, -0.5, -0.3125, 0.375, -0.4375},
				{-0.5, -0.375, -0.5, -0.3125, -0.25, 0.1875},
				{-0.4375, 0.25, -0.5, 0.4375, 0.375, 0.5},
				{0.3125, -0.125, -0.5, 0.4375, 0.25, 0.5},
				{-0.1875, -0.375, -0.5, 0.5, -0.25, 0.5},
				{-0.1875, -0.25, -0.5, -0.0625, 0.125, 0.5},
				{0.0625, -0.125, -0.5, 0.3125, 0, 0.5},
				{-0.0625, 0, -0.5, 0.1875, 0.125, 0.5},
				{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.125, -0.4375, 0.5, 0.375, -0.3125},
				{-0.5, 0.25, -0.3125, 0.5, 0.375, 0.4375},
				{-0.5, -0.375, 0.3125, 0.4375, 0.375, 0.4375},
				{-0.5, -0.375, 0.3125, 0.4375, -0.25, 0.5},
				{-0.5, -0.125, -0.3125, 0.4375, 0, -0.0625},
				{-0.5, 0, -0.1875, 0.4375, 0.125, 0.1875},
				{-0.5, -0.25, 0.0625, 0.4375, 0.125, 0.1875},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})
end


--------------------------
--- RGSpro Facia
--------------------------

--Node will be called facade:<subname>_rgspro
function facade.register_rgspro(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_rgspro", {
		description = desc .. " RGSpro",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.375, 0.5, -0.3125, 0.5},
				{-0.5, -0.3125, 0.25, 0.5, -0.125, 0.5},
				{-0.5, -0.125, 0.125, 0.5, 0.5, 0.5},
			},
		},
--		selection_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--			},
--		},
	})
end

--Node will be called facade:<subname>_rgspro_inner_corner
function facade.register_rgspro_inner_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_rgspro_inner_corner", {
		description = desc .. " RGSpro Inner Corner",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.375, 0.5, -0.3125, 0.5},
				{-0.5, -0.3125, 0.25, 0.5, -0.125, 0.5},
				{-0.5, -0.125, 0.125, 0.5, 0.5, 0.5},
				{0.375, -0.5, -0.5, 0.5, -0.3125, 0.375},
				{0.25, -0.3125, -0.5, 0.5, -0.0625, 0.25},
				{0.125, -0.125, -0.5, 0.5, 0.5, 0.125},
			},
		},
--		selection_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--			},
--		},
	})
end


--Node will be called facade:<subname>_rgspro_outer_corner
function facade.register_rgspro_outer_corner(modname, subname, recipeitem, desc)
	minetest.register_node("facade:" .. subname .. "_rgspro_outer_corner", {
		description = desc .. " RGSpro Outer Corner",
		drawtype = "nodebox",
		tiles = {
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png",
		"" .. modname.. "_" .. subname .. ".png^facade_rgspro.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.375, 0.5, -0.3125, 0.5},
				{-0.5, -0.3125, 0.25, 0.5, -0.0625, 0.5},
				{-0.5, -0.125, 0.125, 0.5, 0.5, 0.5},
				{-0.625, -0.5, 0.375, -0.5, -0.3125, 1.5},
				{-0.75, -0.3125, 0.25, -0.5, -0.125, 1.5},
				{-0.875, -0.125, 0.125, -0.5, 0.5, 1.5},
			},
		},
--		selection_box = {
--			type = "fixed",
--			fixed = {
--				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
--			},
--		},
	})
end


--------------------------
--- Corner Bricks
--------------------------

--Node will be called facade:<subname>_corner_bricks
function facade.register_corner_bricks(modname, subname, recipeitem, desc)
	if not string.match(recipeitem,"clay")
	then	-- do not do for clay things that is ugly
		minetest.register_node("facade:" .. subname .. "_corner_bricks", {
			description = desc .. " Corner Bricks",
			drawtype = "nodebox",
			tiles = {
			"" .. modname.. "_" .. subname .. "_brick.png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5625, -0.5, 0.4375, -0.5, 0, 1},
					{-0.5, -0.5, 0.4375, 0, 0, 0.5},
					{-0.5625, 0, 0.5, -0.5, 0.5, 1.5},
					{-0.5625, 0, 0.4375, 0.5, 0.5, 0.5},
				},
			},
		})
	end
end


--------------------------
--- Columnia shapes
--------------------------
		
-- From mod Columnia (2014 by Glunggi), LGPL 2.1
-- The shapes are using stock minetest.rotate_node() for positioning.

-- These shapes should not be registered if the regular columnia mod is in use
if not minetest.get_modpath("columnia") then

	local columnia_rotate = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		local p0 = pointed_thing.under
		local p1 = pointed_thing.above
		local param2 = 0

		local placer_pos = placer:getpos()
		if placer_pos then
			local dir = {
				x = p1.x - placer_pos.x,
				y = p1.y - placer_pos.y,
				z = p1.z - placer_pos.z
			}
			param2 = minetest.dir_to_facedir(dir)
		end

		if p0.y-1 == p1.y then
			param2 = param2 + 20
			if param2 == 21 then
				param2 = 23
			elseif param2 == 23 then
				param2 = 21
			end
		end

		return minetest.item_place(itemstack, placer, pointed_thing, param2)
	end
	
	-- Node will be called facade:<subname>_columnia_mid
	function facade.register_columnia_mid(modname, subname, recipeitem, desc)
		minetest.register_node("facade:" .. subname .. "_columnia_mid", {
			description = desc .. " Column Middle",
			drawtype = "nodebox",
			tiles = {"" .. modname.. "_" .. subname .. ".png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = minetest.rotate_node,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
				},
			},
		})
	end

	-- Normally, a single shape should be fine both for bottom and top parts of
	-- a column. If materials with textures that don't match with themselves 
	-- when rotated upside-down are added later on, then enable the next function.
	-- Node will be called facade:<subname>_columnia_bottom
	function facade.register_columnia_bottom(modname, subname, recipeitem, desc)
		minetest.register_node("facade:" .. subname .. "_columnia_bottom", {
			description = desc .. " Column Bottom/Top",
			drawtype = "nodebox",
			tiles = {"" .. modname.. "_" .. subname .. ".png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = minetest.rotate_node,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
					{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
					{-0.375, -0.5, -0.375, 0.375, 0, 0.375},
				},
			},
		})
	end

	--[[
	-- This function is commented out, because in the current state, when facade mod
	-- uses materials without directional textures, having one shape for top
	-- and bottom of columns is enough. However, for materials which have textures
	-- that, when rotated, clearly stop matching the other blocks, this function
	-- is preserved.
	-- Node will be called facade:<subname>_columnia_top
	function facade.register_columnia_top(modname, subname, recipeitem, desc)
		-- whitelist items with textures of clear directionality (e.g. bricks)
		if string.match(recipeitem, "brick")
		then	
			minetest.register_node("facade:" .. subname .. "_columnia_top", {
				description = desc .. " Column Top/Bottom",
				drawtype = "nodebox",
				tiles = {"" .. modname.. "_" .. subname .. ".png"},
				paramtype = "light",
				paramtype2 = "facedir",
				is_ground_content = false,
				groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
				sounds = default.node_sound_stone_defaults(),
				on_place = minetest.rotate_node,
				node_box = {
					type = "fixed",
					fixed = {
						{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
						{-0.5, 0.25, -0.5, 0.5, 0.5, 0.5}, 
						{-0.375, 0, -0.375, 0.375, 0.5, 0.375},
					},
				},
			})
		end
	end
	]]--

	-- Node will be called facade:<subname>_columnia_crosslink
	function facade.register_columnia_crosslink(modname, subname, recipeitem, desc)
		minetest.register_node("facade:" .. subname .. "_columnia_crosslink", {
			description = desc .. " Column Crosslink",
			drawtype = "nodebox",
			tiles = {"" .. modname.. "_" .. subname .. ".png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = columnia_rotate,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
					{-0.5, 0, -0.25, 0.5, 0.5, 0.25},
					{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
					{-0.4375, 0.0625, -0.4375, 0.4375, 0.4375, 0.4375},
				},
			},
		})
	end

	-- Node will be called facade:<subname>_columnia_link
	function facade.register_columnia_link(modname, subname, recipeitem, desc)
		minetest.register_node("facade:" .. subname .. "_columnia_link", {
			description = desc .. " Column Link",
			drawtype = "nodebox",
			tiles = {"" .. modname.. "_" .. subname .. ".png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = columnia_rotate,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
				},
			},
		})
	end

	-- Node will be called facade:<subname>_columnia_linkdown
	function facade.register_columnia_linkdown(modname, subname, recipeitem, desc)
		minetest.register_node("facade:" .. subname .. "_columnia_linkdown", {
			description = desc .. " Column Linkdown",
			drawtype = "nodebox",
			tiles = {"" .. modname.. "_" .. subname .. ".png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = false,
			groups = {cracky = 3, oddly_breakable_by_hand = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = columnia_rotate,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.25, 0, -0.5, 0.25, 0.5, 0.5},
					{-0.125, -0.5, -0.125, 0.125, 0, 0.125},
					{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
					{-0.1875, -0.125, -0.1875, 0.1875, 0, 0.1875},
				},
			},
		})
	end

end

--------------------------
--Register Nodes
--------------------------
function facade.register_facade_nodes(modname, subname, recipeitem, desc)
	
	facade.register_bannerstone(modname, subname, recipeitem, desc)
	facade.register_bannerstone_corner(modname, subname, recipeitem, desc)
	facade.register_centerstone(modname, subname, recipeitem, desc)
	facade.register_column(modname, subname, recipeitem, desc)
	facade.register_column_corner(modname, subname, recipeitem, desc)
	facade.register_corbel(modname, subname, recipeitem, desc)
	facade.register_corbel_corner(modname, subname, recipeitem, desc)
	facade.register_corbel_corner_inner(modname, subname, recipeitem, desc)
	facade.register_carved_stone_a(modname, subname, recipeitem, desc)
	facade.register_carved_stone_a_corner(modname, subname, recipeitem, desc)
	facade.register_rgspro(modname, subname, recipeitem, desc)
	facade.register_rgspro_inner_corner(modname, subname, recipeitem, desc)
	facade.register_rgspro_outer_corner(modname, subname, recipeitem, desc)
	facade.register_corner_bricks(modname, subname, recipeitem, desc)
	
	if not minetest.get_modpath("columnia") then
		facade.register_columnia_mid(modname, subname, recipeitem, desc)
		facade.register_columnia_bottom(modname, subname, recipeitem, desc)
		--facade.register_columnia_top(modname, subname, recipeitem, desc)
		facade.register_columnia_crosslink(modname, subname, recipeitem, desc)
		facade.register_columnia_link(modname, subname, recipeitem, desc)
		facade.register_columnia_linkdown(modname, subname, recipeitem, desc)
	end
	
	if wehavechisels then
		-- register all nodes with mychisel mod to use them without creative priv
		chisel.register_node("facade",subname, recipeitem, "bannerstone")
		chisel.register_node("facade",subname, recipeitem, "bannerstone_corner")
		chisel.register_node("facade",subname, recipeitem, "centerstone")
		chisel.register_node("facade",subname, recipeitem, "column")
		chisel.register_node("facade",subname, recipeitem, "column_corner")
		chisel.register_node("facade",subname, recipeitem, "corbel")
		chisel.register_node("facade",subname, recipeitem, "corbel_corner")
		chisel.register_node("facade",subname, recipeitem, "corbel_corner_inner")
		chisel.register_node("facade",subname, recipeitem, "carved_stone_a")
		chisel.register_node("facade",subname, recipeitem, "carved_stone_a_corner")
		chisel.register_node("facade",subname, recipeitem, "rgspro")
		chisel.register_node("facade",subname, recipeitem, "rgspro_inner_corner")
		chisel.register_node("facade",subname, recipeitem, "rgspro_outer_corner")
		chisel.register_node("facade",subname, recipeitem, "corner_bricks")
		
		if not minetest.get_modpath("columnia") then
			chisel.register_node("facade",subname, recipeitem, "columnia_mid")
			chisel.register_node("facade",subname, recipeitem, "columnia_bottom")
			--chisel.register_node("facade",subname, recipeitem, "columnia_top")
			chisel.register_node("facade",subname, recipeitem, "columnia_crosslink")
			chisel.register_node("facade",subname, recipeitem, "columnia_link")
			chisel.register_node("facade",subname, recipeitem, "columnia_linkdown")
		end
	end
end

-- register the total number of different designs in this mod with mychisel
if wehavechisels then chisel.add_mod("facade",14) end

