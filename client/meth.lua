local druginfo = false

RegisterNetEvent("bach-drugs:farmMeth")
AddEventHandler("bach-drugs:farmMeth", function()
	ExecuteCommand("crouch")
	lib.notify({ description = locale("stop_press_x") })
	druginfo = true
	if
		lib.progressBar({
			duration = Config.Meth.FarmingTid * 600,
			label = locale("farmer_label"),
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
				move = true,
				combat = true,
			},
			anim = {
				dict = "anim@scripted@player@mission@tunf_bunk_ig3_nas_upload@",
				clip = "shootout_typing",
			},
		})
	then
		TriggerServerEvent("bach-drugs:giveItem", Config.Meth.ItemFarm, Config.Meth.FarmModtag, druginfo)
		Repeat("bach-drugs:farmMeth")
	else
		druginfo = false
		lib.notify({
			description = locale("cancelled"),
			type = "error",
		})
	end
end)

RegisterNetEvent("bach-drugs:procMeth")
AddEventHandler("bach-drugs:procMeth", function()
	local cokeCount = exports.ox_inventory:Search("count", Config.Meth.ItemFarm)
	local bagCount = exports.ox_inventory:Search("count", Config.BagName)
	local minAmountMeth = Config.Meth.FarmModtag - 1
	local minAmountBag = Config.Meth.BagRemoveAmount - 1

	if cokeCount <= minAmountMeth then
		if bagCount <= minAmountBag then
			druginfo = false
			lib.notify({
				description = locale("not_enough_items", minAmountMeth, GetItemName(Config.Meth.ItemFarm))
					.. " "
					.. locale("not_enough_items", Config.Meth.BagRemoveAmount, GetItemName(Config.BagName)),
				type = "error",
			})
		else
			druginfo = false
			lib.notify({
				description = locale("not_enough_items", minAmountMeth, GetItemName(Config.Meth.ItemFarm)),
				type = "error",
			})
		end
	elseif bagCount <= minAmountBag then
		druginfo = false
		lib.notify({
			description = locale("not_enough_items", Config.Meth.BagRemoveAmount, GetItemName(Config.BagName)),
			type = "error",
		})
	else
		druginfo = true
		lib.notify({ description = locale("stop_press_x") })
		if
			lib.progressBar({
				duration = Config.Meth.OmdanTid * 600,
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
			TriggerServerEvent("bach-drugs:removeItem", Config.Meth.ItemFarm, Config.Meth.FarmModtag)
			Wait(250)
			TriggerServerEvent("bach-drugs:removeItem", Config.BagName, Config.Meth.BagRemoveAmount)
			Wait(250)
			TriggerServerEvent("bach-drugs:giveItem", Config.Meth.ItemOmdan, Config.Meth.OmdanGiv, druginfo)
			Repeat("bach-drugs:procMeth")
		else
			druginfo = true
			lib.notify({
				description = locale("cancelled"),
				type = "error",
			})
		end
	end
end)
