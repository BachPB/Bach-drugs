Config = {}

Config.MiniGame = true
Config.MiniGameKEY = "h"
Config.MiniGameDIF = "easy" --[[
	Preset difficulties:
		'easy' - { areaSize: 50, speedMultiplier: 1 }
		'medium' - { areaSize: 40, speedMultiplier: 1.5 }
		'hard' - { areaSize: 25, speedMultiplier: 1.75 }
]]
Config.BagName = "small_bag"

Config.Coke = {
	FarmModtag = 8, -- Hvor mange du modtager
	FarmingTid = math.random(15, 15), -- Sekunder
	MarkCoords = vector3(1895.1761, 4850.7119, 44.1254),
	ItemFarm = "coke_leaf",
	-- Omdan
	OmdanGiv = 4,
	OmdanCoords = vector3(1700.0564, 4936.1001, 41.0781),
	OmdanTid = math.random(8, 16), -- Sekunder
	ItemOmdan = "coke_baggy",
	BagRemoveAmount = 8,
}

Config.Meth = {
	FarmModtag = 8, -- Hvor mange du modtager
	FarmingTid = math.random(15, 15), -- Sekunder
	MarkCoords = vector3(599.7138, -423.5928, 16.6237),
	ItemFarm = "meth_leaf",
	-- Omdan
	OmdanGiv = 4,
	OmdanCoords = vector3(-305.1778, -1353.8981, 22.3097),
	OmdanTid = math.random(8, 16), -- Sekunder
	ItemOmdan = "meth_baggy", --- Du modtager dette
	BagRemoveAmount = 8,
}

Config.Weed = {
	FarmModtag = 8, -- Hvor mange du modtager
	FarmingTid = math.random(15, 15), -- Sekunder
	MarkCoords = vector3(2283.2146, 4764.3633, 36.8852),
	ItemFarm = "weed_leaf",
	-- Omdan
	OmdanGiv = 4,
	OmdanCoords = vector3(436.5910, -1970.1228, 16.2849),
	OmdanTid = math.random(8, 16), -- Sekunder
	ItemOmdan = "weed_baggy", --- Du modtager dette
	BagRemoveAmount = 8,
}

Config.Herion = {
	FarmModtag = 8, -- Hvor mange du modtager
	FarmingTid = math.random(15, 15), -- Sekunder
	MarkCoords = vector3(-71.3639, -1292.7369, 21.7920),
	ItemFarm = "opium",
}
