minetest.register_craft({
	output = "default:stone",
	recipe = {
		{"fulldiamond:stone", "default:cobble", "default:cobble"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:cobble 2",
	recipe = {
		{"fulldiamond:stone", "default:stone"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:sand",
	recipe = {
		{"fulldiamond:stone", "default:stone", "default:stone"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:stone 2",
	recipe = {
		{"fulldiamond:stone", "default:sand"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:coal_lump",
	recipe = {
		{"fulldiamond:stone", "default:sand", "default:sand"},
		{"default:sand", "default:sand", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:sand 4",
	recipe = {
		{"fulldiamond:stone", "default:coal_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:iron_lump",
	recipe = {
		{"fulldiamond:stone", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "default:coal_lump", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:coal_lump 4",
	recipe = {
		{"fulldiamond:stone", "default:iron_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:copper_lump",
	recipe = {
		{"fulldiamond:stone", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:coal_lump 3",
	recipe = {
		{"fulldiamond:stone", "default:copper_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:tin_lump",
	recipe = {
		{"fulldiamond:stone", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:coal_lump 5",
	recipe = {
		{"fulldiamond:stone", "default:tin_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:gold_lump",
	recipe = {
		{"fulldiamond:stone", "default:iron_lump", "default:iron_lump"},
		{"default:iron_lump", "default:iron_lump", "default:iron_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:iron_lump 5",
	recipe = {
		{"fulldiamond:stone", "default:gold_lump"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:mese_crystal",
	recipe = {
		{"fulldiamond:stone", "default:gold_lump", "default:gold_lump"},
		{"default:gold_lump", "", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:gold_lump 3",
	recipe = {
		{"fulldiamond:stone", "default:mese_crystal"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:diamond",
	recipe = {
		{"fulldiamond:stone", "default:mese_crystal", "default:mese_crystal"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:mese_crystal 2",
	recipe = {
		{"fulldiamond:stone", "default:diamond"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:wood",
	recipe = {
		{"fulldiamond:stone", "default:cobble", "default:cobble"},
		{"default:cobble", "", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:cobble 3",
	recipe = {
		{"fulldiamond:stone", "default:wood"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:dirt 2",
	recipe = {
		{"fulldiamond:stone", "default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "", ""}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})
minetest.register_craft({
	output = "default:cobble 6",
	recipe = {
		{"fulldiamond:stone", "default:dirt", "default:dirt"}
	},
	replacements = {
		{"fulldiamond:stone", "fulldiamond:stone"}
	}
})