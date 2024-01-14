lib.locale()

function Repeat(event)
	Wait(10)
	if Config.MiniGame then
		local success = lib.skillCheck({ "easy" }, { "h" })
		if success then
			TriggerEvent(tostring(event))
		else
			lib.notify({
				description = locale("cancelled"),
				type = "error",
			})
		end
	else
		TriggerEvent(tostring(event))
	end
end

function GetItemName(drugname)
	local itemNames = {}
	for item, data in pairs(exports.ox_inventory:Items()) do
		itemNames[item] = data.label
	end
	if itemNames[drugname] then
		return itemNames[drugname]
	else
		return "Item Navn Ikke Fundet"
	end
end
