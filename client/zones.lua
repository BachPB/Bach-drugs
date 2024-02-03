if Config.Method ~= "radial" then
	return
end

local function createRadialItem(id, icon, label, onSelectEvent)
	return function()
		lib.addRadialItem({
			id = id,
			icon = icon,
			label = label,
			onSelect = function()
				TriggerEvent(onSelectEvent)
			end,
		})
	end
end

local function onExit(self, id)
	lib.removeRadialItem(id)
	lib.hideTextUI()
end

local function inside(self, label, icon)
	lib.showTextUI(label, {
		icon = icon,
	})
end

-- COKE HER

-- Farm Blade
local onEnterCokeFarm = createRadialItem("bach_coke_farm", "cannabis", locale("farm_label"), "bach-drugs:farmCoke")
local boxCokeFarm = lib.zones.box({
	coords = Config.Coke.MarkCoords,
	size = vec3(4, 4, 7),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("farm_label"), "cannabis")
	end,
	onEnter = onEnterCokeFarm,
	onExit = function(self)
		onExit(self, "bach_coke_farm")
	end,
})

-- Omdan Coke
local onEnterCokeProcess =
	createRadialItem("bach_coke_process", "cannabis", locale("cokeproc_label"), "bach-drugs:cokeproc")
local boxCokeProcess = lib.zones.box({
	coords = Config.Coke.OmdanCoords,
	size = vec3(4, 4, 7),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("cokeproc_label"), "box")
	end,
	onEnter = onEnterCokeProcess,
	onExit = function(self)
		onExit(self, "bach_coke_process")
	end,
})

-- METH HER
-- Farm Meth
local onEnterMethFarm = createRadialItem("bach_meth_farm", "capsules", locale("farm_label"), "bach-drugs:farmMeth")
local boxMethFarm = lib.zones.box({
	coords = Config.Meth.MarkCoords,
	size = vec3(4, 4, 7),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("farm_label"), "capsules")
	end,
	onEnter = onEnterMethFarm,
	onExit = function(self)
		onExit(self, "bach_meth_farm")
	end,
})

-- Omdan Meth
local onEnterMethProcess =
	createRadialItem("bach_meth_process", "capsules", locale("procMeth_label"), "bach-drugs:procMeth")
local boxMethProcess = lib.zones.box({
	coords = Config.Meth.OmdanCoords,
	size = vec3(4, 4, 7),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("procMeth_label"), "capsules")
	end,
	onEnter = onEnterMethProcess,
	onExit = function(self)
		onExit(self, "bach_meth_process")
	end,
})

-- Weed
local onEnterWeedFarm =
	createRadialItem("bach_weed_farm", "fa-solid fa-cannabis", locale("farm_label"), "bach-drugs:farmWeed")
local boxWeedFarm = lib.zones.box({
	coords = Config.Weed.MarkCoords,
	size = vec3(10, 10, 1),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("farm_label"), "fa-solid fa-cannabis")
	end,
	onEnter = onEnterWeedFarm,
	onExit = function(self)
		onExit(self, "bach_weed_farm")
	end,
})

local onEnterWeedProcess =
	createRadialItem("bach_weed_process", "fa-solid fa-joint", locale("procWeed_label"), "bach-drugs:procWeed")
local boxWeedProcess = lib.zones.box({
	coords = Config.Weed.OmdanCoords,
	size = vec3(13, 13, 1),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("procWeed_label"), "fa-solid fa-joint")
	end,
	onEnter = onEnterWeedProcess,
	onExit = function(self)
		onExit(self, "bach_weed_process")
	end,
})

-- Herion
local onEnterHerionFarm =
	createRadialItem("bach_herion_farm", "fa-solid fa-plant-wilt", locale("farmHerion_label"), "bach-drugs:farmHerion")
local boxHerionFarm = lib.zones.box({
	coords = Config.Herion.MarkCoords,
	size = vec3(13, 13, 1),
	rotation = 0,
	debug = false,
	inside = function(self)
		inside(self, locale("farmHerion_label"), "fa-solid fa-plant-wilt")
	end,
	onEnter = onEnterHerionFarm,
	onExit = function(self)
		onExit(self, "bach_herion_farm")
	end,
})
