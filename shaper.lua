-- Facade Shaper
-- This machine serves the same purpose as the circular saw from moreblocks or the milling
-- maching from mymillwork. Namely, it provides a tool for creating shaped blocks that does
-- not rely on using recipes.


-- Balancing output per 1 input block with respect to apparent volume of output shape.
-- All current shapes are added, but shapes not present in this table will still be produced 
-- one at a time — if that is the desired quantity, adding them is not required.
local output_ratios = {
	bannerstone = 1,
	bannerstone_corner = 1,
	centerstone = 1,
	column = 1,
	column_corner = 1,
	corbel = 1,
	corbel_corner = 1,
	corbel_corner_inner = 1,
	carved_stone_a = 1,
	carved_stone_a_corner = 1,
	rgspro = 2,
	rgspro_inner_corner = 1,
	rgspro_outer_corner = 1,
	corner_bricks = 2,
	columnia_mid = 4,
	columnia_bottom = 1,
	columnia_top = 1,
	columnia_crosslink = 1,
	columnia_link = 4,
	columnia_linkdown = 4,
}

-- The material to be used for buttons when no material is actually loaded.
-- It should be a generic material for which all the facade shapes are defined.
local demo_material = "default:stone"

-- Whether the facade should obey area protection for the inventories (as machines in technic mod)
-- or allow anybody to use them, but disallow the removal of machine itself (like circular saw in moreblocks)
local protect_inventories = false



local function prepare_formspec (material_name)

	local output = string.gsub(material_name, "^.*:", "facade:")

	local shaper_formspec = 

	"size[8,11;]"..
	"label[0,0;" .. "Choose shape to produce:" .. "]"..

	-- row 1, blocky shapes
	"item_image_button[0,0.5;1,1;" .. output .. "_bannerstone" .. ";bannerstone; ]"..
	"item_image_button[1,0.5;1,1;" .. output .. "_bannerstone_corner" .. ";bannerstone_corner; ]"..
	"item_image_button[2,0.5;1,1;" .. output .. "_centerstone" .. ";centerstone; ]"..
	"item_image_button[3,0.5;1,1;" .. output .. "_carved_stone_a" .. ";carved_stone_a; ]"..
	"item_image_button[4,0.5;1,1;" .. output .. "_carved_stone_a_corner" .. ";carved_stone_a_corner; ]"..
	"item_image_button[5,0.5;1,1;" .. output .. "_column" .. ";column; ]"..
	"item_image_button[6,0.5;1,1;" .. output .. "_column_corner" .. ";column_corner; ]"..

	-- row 2, corbel
	"item_image_button[0,1.5;1,1;" .. output .. "_corbel" .. ";corbel; ]"..
	"item_image_button[1,1.5;1,1;" .. output .. "_corbel_corner_inner" .. ";corbel_corner_inner; ]"..
	"item_image_button[2,1.5;1,1;" .. output .. "_corbel_corner" .. ";corbel_corner; ]"..

	-- row 3, cornice
	"item_image_button[0,2.5;1,1;" .. output .. "_rgspro" .. ";rgspro; ]"..
	"item_image_button[1,2.5;1,1;" .. output .. "_rgspro_inner_corner" .. ";rgspro_inner_corner; ]"..
	"item_image_button[2,2.5;1,1;" .. output .. "_rgspro_outer_corner" .. ";rgspro_outer_corner; ]"

	-- row 4, columnia
	if not minetest.get_modpath("columnia") then
		shaper_formspec = shaper_formspec ..
		"item_image_button[0,3.5;1,1;" .. output .. "_columnia_mid" .. ";columnia_mid; ]"..
		"item_image_button[1,3.5;1,1;" .. output .. "_columnia_bottom" .. ";columnia_bottom; ]"..
		"item_image_button[2,3.5;1,1;" .. output .. "_columnia_crosslink" .. ";columnia_crosslink; ]"..
		"item_image_button[3,3.5;1,1;" .. output .. "_columnia_link" .. ";columnia_link; ]"..
		"item_image_button[4,3.5;1,1;" .. output .. "_columnia_linkdown" .. ";columnia_linkdown; ]"

		-- this code is a provision in case top column pieces enter service
		if minetest.registered_nodes[output .. "_columnia_top"] then
			shaper_formspec = shaper_formspec .. 
			"item_image_button[5,3.5;1,1;" .. output .. "_columnia_top" .. ";columnia_top; ]"
		end

	end

	-- row 5 for shapes which are not available for all materials
	-- only one such shape exists so far, but more should be easy to add here

	if minetest.registered_nodes[output .. "_corner_bricks"] then
		shaper_formspec = shaper_formspec .. 
		"item_image_button[0,4.5;1,1;" .. output .. "_corner_bricks" .. ";corner_bricks; ]"
	end
	
	-- inventory part

	shaper_formspec = shaper_formspec ..

	"label[0, 5.5;".."In:".."]"..
	"list[current_name;src;1,5.5;1,1;]"..
	"label[3, 5.5;".."Out:".."]"..
	"list[current_name;dst;4,5.5;4,1;]"..

	"list[current_player;main;0,7;8,4;]"..
	"listring[current_name;dst]"..
	"listring[current_player;main]"..
	"listring[current_name;src]"..
	"listring[current_player;main]"	

	return(shaper_formspec)
	
end


-- a simple check for compatibile materials
local function check_material_applicability (material)
	-- using centerstone node here, since it appears to be both one of the oldest
	-- and defined for all materials as well, making it suitable for a quick check
	if minetest.registered_nodes[string.gsub(material, "^.*:", "facade:") .. "_centerstone"] then
		return true
	else
		return false
	end
end


-- update the buttons to show shapes made from the actual material
local function update_formspec_put (pos, listname, index, stack, player)

	if protect_inventories and minetest.is_protected(pos, player:get_player_name()) then
		return
	end

	if listname ~= "src" then
		return
	end
	
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local material_name = stack:get_name()

	if check_material_applicability(material_name) then
		meta:set_string("formspec", prepare_formspec(material_name))
	else
		return
	end

end


-- update the buttons to show shapes made from demo material if all material is removed
local function update_formspec_take (pos, listname, index, stack, player)

	if protect_inventories and minetest.is_protected(pos, player:get_player_name()) then
		return
	end

	if listname ~= "src" then
		return
	end
	
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

	if inv:is_empty("src") then
		meta:set_string("formspec", prepare_formspec(demo_material))
	end

	return

end


-- disallow putting in materials which are not supported
local function check_inventory_put (pos, listname, index, stack, player)

	if protect_inventories and minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end

	if listname ~= "src" then
		return 0
	end
	
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local material_name = stack:get_name()

	if check_material_applicability(material_name) then
		return(stack:get_count())
	else
		return 0
	end
end


local function check_inventory_take (pos, listname, index, stack, player)

	if protect_inventories and minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end

	if listname ~= "src" and listname ~= "dst" then
		return 0
	end

	return(stack:get_count())
	
end


local function check_inventory_move (pos, from_list, from_index, to_list, to_index, count, player)
	
	if protect_inventories and minetest.is_protected(pos, player:get_player_name()) then
		return 0
	end

	return(stack:get_count())
	
end


-- process the form fields and convert source material to desired shapes
local function form_handler(pos, formname, fields, sender)

	if protect_inventories and minetest.is_protected(pos, sender:get_player_name()) then
		return
	end

	if fields.quit then 
		return 
	end

	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

	if inv:is_empty("src") then
		return
	end

	local inputstack = inv:get_stack("src", 1)
	local inputname = inputstack:get_name()
	
	for shape,_ in pairs(fields) do

		local result = string.gsub(inputname, "^.*:", "facade:") .. "_" .. shape

		-- one can never be overly paranoid, unlike the quick check before, this one is precise
		if not minetest.registered_nodes[result] then
			return
		end

		-- output quantities are adjusted to preserve roughly same mass of resulting products
		if output_ratios[shape] then
			result = result .. " " .. output_ratios[shape]
		end

		if not inv:room_for_item("dst", result) then
			return
		end

		inputstack:take_item(1)
		inv:set_stack("src", 1, inputstack)
		inv:add_item("dst", result)

	end

	return
end


local function check_removability (pos, player)

	local meta = minetest.get_meta(pos)
	local owner = meta:set_string("owner")
	local pname = player:get_player_name()
	local inv = meta:get_inventory()

	-- owner may always remove the device
	if owner and owner ~= "" and pname and pname ~= "" and owner == pname then
		if inv:is_empty("src") and inv:is_empty("dst") then
			return true
		else
			return false
		end
	end

	if minetest.is_protected(pos, player:get_player_name()) then
		return false
	end

	if inv:is_empty("src") and inv:is_empty("dst") then
		return true
	end

	return false

end


minetest.register_node("facade:shaper", {
	description = "Shaper Machine",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			-- base
			{-1/2, -1/2, -1/2, 1/2, -14/32, 1/2},
			-- back
			{-8/32, -1/2, 12/32, 8/32, 1/2, 16/32},
			-- table
			{-8/32, -4/32, -16/32, 8/32, 4/32, 16/32},
			-- rear table sliding support
			{-16/32, -4/32, 12/32, 16/32, 4/32, 16/32},
			-- front table sliding support
			{-8/32, -14/32, -12/32, 8/32, -4/32, -16/32},
			-- top tool beam
			{-4/32, 16/32, -8/32, 4/32, 12/32, 12/32},
			-- cutter holder
			{-2/32, 7/32, -2/32, 2/32, 14/32, 2/32},
			-- cutter
			{-1/128, 6/32, -1/32, 1/128, 7/32, 1/32},
		},
	},
	selection_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, 1/2, 1/2, 1/2},
			},
	},
	tiles = {	"facade_shaper_top.png",
			"facade_shaper_bottom.png",
			"facade_shaper_right.png",
			"facade_shaper_left.png",
			"facade_shaper_back.png",
			"facade_shaper_front.png"},
	groups = { oddly_breakable_by_hand=2, cracky=3, dig_immediate=1 },
	paramtype = "light",
	paramtype2  = "facedir",
	legacy_facedir_simple = true,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", prepare_formspec(demo_material))
		local inv = meta:get_inventory()
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		local owner = placer and placer:get_player_name() or ""
		meta:set_string("owner", owner)
		if owner then
			meta:set_string("infotext", ("Facade Shaper (owned by %s)"):format(owner))
		else
			meta:set_string("infotext", "Facade Shaper")
		end
	end,
	can_dig = check_removability,
	allow_metadata_inventory_put  = check_inventory_put,
	allow_metadata_inventory_take = check_inventory_take,
	allow_metadata_inventory_move = check_inventory_move,
	on_metadata_inventory_put = update_formspec_put,
	on_metadata_inventory_take = update_formspec_take,
	on_receive_fields = form_handler,
})


minetest.register_craft({
	output = 'facade:shaper',
	recipe = {
		{'', 				'default:diamond',	''				},
		{'default:steel_ingot',	'default:steelblock',	'default:steel_ingot'	},
		{'',				'default:steelblock' , 				''	},

	},
})
