--- @param druginfo = boolean true or false hvis false. Bliver du kicket. Hvis true så får du dit item
RegisterServerEvent("bach-drugs:giveItem")
AddEventHandler("bach-drugs:giveItem", function(itemname, count, druginfo)
	local src = source
	if druginfo then
		local canCarry = exports.ox_inventory:CanCarryItem(src, itemname, count)
		if canCarry then
			exports.ox_inventory:AddItem(src, itemname, count)
		else
			TriggerClientEvent("ox_lib:notify", src, {
				description = locale("not_enough_space"),
				type = "error",
			})
		end
	else
		print("Modder typen: "..GetPlayerName(src))
	end
end)

RegisterServerEvent("bach-drugs:removeItem")
AddEventHandler("bach-drugs:removeItem", function(itemname, count)
	local src = source
	exports.ox_inventory:RemoveItem(src, itemname, count)
end)
