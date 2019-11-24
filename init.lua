-- Recipe for Philosopher's Stone
minetest.register_craft({
	output = "fulldiamond:stone",
	recipe = {
		{"default:mese_crystal_fragment", "default:glass", "default:mese_crystal_fragment"},
		{"default:glass", "default:diamond", "default:glass"},
		{"default:mese_crystal_fragment", "default:glass", "default:mese_crystal_fragment"}
	}
})

-- Philosopher's Stone item
minetest.register_tool("fulldiamond:stone", {
	description = "Philosopher's Stone",
	inventory_image = "philstone.png",
	stack_max = 1
})

-- Recipe for Alchemist's Table
minetest.register_craft({
	output = "fulldiamond:table",
	recipe = {
		{"default:mese_crystal", "default:obsidian", "default:mese_crystal"},
		{"default:obsidian", "fulldiamond:stone", "default:obsidian"},
		{"default:mese_crystal", "default:obsidian", "default:mese_crystal"}
	}
})

-- Testing EMC recipes (buggy)
--[[ minetest.register_craft({
	method = "crafting",
	output = "default:cobble",
	recipe = {"default:stone"}
}) ]]--

-- Alchemist's Table node
minetest.register_node("fulldiamond:table", {
	description = "Alchemist's Table",
	tiles = {"alchtabletop.png", "alchtablebottom.png", "alchtableside.png"},
	groups = { cracky = 2 },
	can_dig = can_dig,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		meta:set_int("emc_stored", 0)
		meta:set_string("formspec", fulldiamond.get_table_formspec(meta))
		inv:set_size("inp", 1)
	end,
	on_metadata_inventory_put = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local inplist = inv:get_list("inp")
		local itemName = inp:get_stack("inp", 1)
		-- inv:set_stack("inp", 1, "")
		-- meta:set_int("emc_stored", meta:get_int("emc_stored") + fulldiamond.emc_values[itemName])
	end
})

fulldiamond = {}

-- Boilerplate to support intllib (stolen from technic init.lua)
if rawget(_G, "intllib") then
	fulldiamond.getter = intllib.Getter()
else
	fulldiamond.getter = function(s,a,...)if a==nil then return s end a={a,...}return s:gsub("(@?)@(%(?)(%d+)(%)?)",function(e,o,n,c)if e==""then return a[tonumber(n)]..(o==""and c or"")else return"@"..o..n..c end end) end
end
local S = fulldiamond.getter

-- Alchemist's Table interface
function fulldiamond.get_table_formspec(meta)
	return "size[8, 8.5]"..
	"list[current_player;main;0,4.25;8,1;]"..
	"label[0,0;EMC:"..tostring(meta:get_int("emc_stored")).."]"..
	"list[context;emc_stored;1,0;1,1;]"..
	"list[current_player;main;0,5.5;8,3;8]"..
	"list[context;inp;2.75,0.5;1,1;]"
end

local path = minetest.get_modpath("fulldiamond")
dofile(path.."/item_ex_rec.lua")
dofile(path.."/emc_values.lua")