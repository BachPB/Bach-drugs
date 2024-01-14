local druginfo = false

RegisterNetEvent("bach-drugs:farmHerion")
AddEventHandler("bach-drugs:farmHerion", function()
	ExecuteCommand("crouch")
	Wait(100)
	lib.notify({ description = locale("stop_press_x") })
	druginfo = true
	if
		lib.progressBar({
			duration = Config.Herion.FarmingTid * 600,
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
		TriggerServerEvent("bach-drugs:giveItem", Config.Herion.ItemFarm, Config.Herion.FarmModtag, druginfo)
		Repeat("bach-drugs:farmHerion")
	else
		druginfo = false
		lib.notify({
			description = locale("cancelled"),
			type = "error",
		})
	end
end)
