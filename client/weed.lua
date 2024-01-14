local druginfo = false

RegisterNetEvent("bach-drugs:farmWeed")
AddEventHandler("bach-drugs:farmWeed", function()
	ExecuteCommand("crouch")
	Wait(100)
	lib.notify({ description = locale("stop_press_x") })
	druginfo = true
	if
		lib.progressBar({
			duration = Config.Weed.FarmingTid * 600,
			label = locale("farmer_label"),
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
				move = true,
				combat = true,
			},
			anim = {
				dict = "amb@world_human_gardener_plant@male@base",
				clip = "base",
			},
		})
	then
		TriggerServerEvent("bach-drugs:giveItem", Config.Weed.ItemFarm, Config.Weed.FarmModtag, druginfo)
		Repeat("bach-drugs:farmWeed")
	else
		lib.notify({
			description = locale("cancelled"),
			type = "error",
		})
		druginfo = false
	end
end)

RegisterNetEvent("bach-drugs:procWeed")
AddEventHandler("bach-drugs:procWeed", function()
	local cokeCount = exports.ox_inventory:Search("count", Config.Weed.ItemFarm)
	local bagCount = exports.ox_inventory:Search("count", Config.BagName)
	local minAmountWeed = Config.Weed.FarmModtag - 1
	local minAmountBag = Config.Weed.BagRemoveAmount - 1

	if cokeCount <= minAmountWeed then
		if bagCount <= minAmountBag then
			druginfo = true
			lib.notify({
				description = locale("not_enough_items", minAmountWeed, GetItemName(Config.Weed.ItemFarm))
					.. " "
					.. locale("not_enough_items", Config.Weed.BagRemoveAmount, GetItemName(Config.BagName)),
				type = "error",
			})
		else
			druginfo = true
			lib.notify({
				description = locale("not_enough_items", minAmountWeed, GetItemName(Config.Weed.ItemFarm)),
				type = "error",
			})
		end
	elseif bagCount <= minAmountBag then
		druginfo = true
		lib.notify({
			description = locale("not_enough_items", Config.Weed.BagRemoveAmount, GetItemName(Config.BagName)),
			type = "error",
		})
	else
		druginfo = true
		lib.notify({ description = locale("stop_press_x") })
		if
			lib.progressBar({
				duration = Config.Weed.OmdanTid * 600,
				label = locale("cokeproc_label"),
				useWhileDead = false,
				canCancel = true,
				disable = {
					car = true,
					move = true,
					combat = true,
				},
				anim = {
					dict = "anim@amb@business@coc@coc_unpack_cut@",
					clip = "fullcut_cycle_cokecutter",
				},
			})
		then
			TriggerServerEvent("bach-drugs:removeItem", Config.Weed.ItemFarm, Config.Weed.FarmModtag)
			Wait(250)
			TriggerServerEvent("bach-drugs:removeItem", Config.BagName, Config.Weed.BagRemoveAmount)
			Wait(250)
			TriggerServerEvent("bach-drugs:giveItem", Config.Weed.ItemOmdan, Config.Weed.OmdanGiv, druginfo)
			Repeat("bach-drugs:procWeed")
		else
			druginfo = true
			lib.notify({
				description = locale("cancelled"),
				type = "error",
			})
		end
	end
end)
