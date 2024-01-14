local druginfo = false

RegisterNetEvent("bach-drugs:farmCoke")
AddEventHandler("bach-drugs:farmCoke", function()
	ExecuteCommand("crouch")
	Wait(100)
	lib.notify({ description = locale("stop_press_x") })
	druginfo = true
	if
		lib.progressBar({
			duration = Config.Coke.FarmingTid * 600,
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
		TriggerServerEvent("bach-drugs:giveItem", Config.Coke.ItemFarm, Config.Coke.FarmModtag, druginfo)
		Repeat("bach-drugs:farmCoke")
	else
		lib.notify({
			description = locale("cancelled"),
			type = "error",
		})
		druginfo = false
	end
end)

RegisterNetEvent("bach-drugs:cokeproc")
AddEventHandler("bach-drugs:cokeproc", function()
	local cokeCount = exports.ox_inventory:Search("count", Config.Coke.ItemFarm)
	local bagCount = exports.ox_inventory:Search("count", Config.BagName)
	local minAmountCoke = Config.Coke.FarmModtag - 1
	local minAmountBag = Config.Coke.BagRemoveAmount - 1

	if cokeCount <= minAmountCoke then
		if bagCount <= minAmountBag then
			druginfo = true
			lib.notify({
				description = locale("not_enough_items", minAmountCoke, GetItemName(Config.Coke.ItemFarm))
					.. " "
					.. locale("not_enough_items", Config.Coke.BagRemoveAmount, GetItemName(Config.BagName)),
				type = "error",
			})
		else
			druginfo = true
			lib.notify({
				description = locale("not_enough_items", minAmountCoke, GetItemName(Config.Coke.ItemFarm)),
				type = "error",
			})
		end
	elseif bagCount <= minAmountBag then
		druginfo = true
		lib.notify({
			description = locale("not_enough_items", Config.Coke.BagRemoveAmount, GetItemName(Config.BagName)),
			type = "error",
		})
	else
		druginfo = true
		lib.notify({ description = locale("stop_press_x") })
		if
			lib.progressBar({
				duration = Config.Coke.OmdanTid * 600,
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
			TriggerServerEvent("bach-drugs:removeItem", Config.Coke.ItemFarm, Config.Coke.FarmModtag)
			Wait(250)
			TriggerServerEvent("bach-drugs:removeItem", Config.BagName, Config.Coke.BagRemoveAmount)
			Wait(250)
			TriggerServerEvent("bach-drugs:giveItem", Config.Coke.ItemOmdan, Config.Coke.OmdanGiv, druginfo)
			Repeat("bach-drugs:cokeproc")
		else
			druginfo = true
			lib.notify({
				description = locale("cancelled"),
				type = "error",
			})
		end
	end
end)

-- Events en slags loop. Det bugger lidt med lib, så har bare lavet en notify istedet
-- RegisterNetEvent("bach-drugs:checkKeyPressed")
-- AddEventHandler("bach-drugs:checkKeyPressed", function()
-- 	while true do
-- 		lib.showTextUI("[E] - Stoppe", {
-- 			position = "right-center",
-- 			icon = "joint",
-- 		})
-- 		if IsControlPressed(0, 38) then
-- 			lib.cancelProgress()
-- 			lib.hideTextUI()
-- 			break
-- 		end
-- 		Wait(50)
-- 	end
-- end)
