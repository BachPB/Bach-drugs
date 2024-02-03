Citizen.CreateThread(function()
	if Config.Method ~= "target" then
		return
	end
	-- KOKAIN
	exports["qb-target"]:AddBoxZone("farmcoke", Config.Coke.MarkCoords, 10, 10, {
		name = "farmcoke",
		heading = 0,
		debugPoly = false,
		minZ = Config.Coke.MarkCoords.z - 1,
		maxZ = Config.Coke.MarkCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:farmCoke",
				icon = "fa-solid fa-cannabis",
				label = locale("farm_label"),
			},
		},
		distance = 2.0,
	})
	exports["qb-target"]:AddBoxZone("omdancoke", Config.Coke.OmdanCoords, 13, 13, {
		name = "omdancoke",
		heading = 0,
		debugPoly = false,
		minZ = Config.Coke.OmdanCoords.z - 1,
		maxZ = Config.Coke.OmdanCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:cokeproc",
				icon = "fa-solid fa-sack-xmark",
				label = locale("cokeproc_label"),
			},
		},
		distance = 2.0,
	})
	-- METH
	exports["qb-target"]:AddBoxZone("farmmeth", Config.Meth.MarkCoords, 10, 10, {
		name = "farmmeth",
		heading = 0,
		debugPoly = false,
		minZ = Config.Meth.MarkCoords.z - 1,
		maxZ = Config.Meth.MarkCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:farmMeth",
				icon = "fa-solid fa-cannabis",
				label = locale("farm_label"),
			},
		},
		distance = 2.0,
	})
	exports["qb-target"]:AddBoxZone("omdanmeth", Config.Meth.OmdanCoords, 13, 13, {
		name = "omdanmeth",
		heading = 0,
		debugPoly = false,
		minZ = Config.Meth.OmdanCoords.z - 1,
		maxZ = Config.Meth.OmdanCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:procMeth",
				icon = "fa-solid fa-flask-vial",
				label = locale("procMeth_label"),
			},
		},
		distance = 2.0,
	})
	-- Weed
	exports["qb-target"]:AddBoxZone("farmweed", Config.Weed.MarkCoords, 10, 10, {
		name = "farmweed",
		heading = 0,
		debugPoly = false,
		minZ = Config.Weed.MarkCoords.z - 1,
		maxZ = Config.Weed.MarkCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:farmWeed",
				icon = "fa-solid fa-cannabis",
				label = locale("farm_label"),
			},
		},
		distance = 2.0,
	})
	exports["qb-target"]:AddBoxZone("omdanweed", Config.Weed.OmdanCoords, 13, 13, {
		name = "omdanweed",
		heading = 0,
		debugPoly = false,
		minZ = Config.Weed.OmdanCoords.z - 1,
		maxZ = Config.Weed.OmdanCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:procWeed",
				icon = "fa-solid fa-joint",
				label = locale("procWeed_label"),
			},
		},
		distance = 2.0,
	})
	-- HERION
	exports["qb-target"]:AddBoxZone("farmherion", Config.Herion.MarkCoords, 13, 13, {
		name = "farmherion",
		heading = 0,
		debugPoly = false,
		minZ = Config.Herion.MarkCoords.z - 1,
		maxZ = Config.Herion.MarkCoords.z + 1,
	}, {
		options = {
			{
				type = "client",
				event = "bach-drugs:farmHerion",
				icon = "fa-solid fa-plant-wilt",
				label = locale("farmHerion_label"),
			},
		},
		distance = 2.0,
	})
end)
