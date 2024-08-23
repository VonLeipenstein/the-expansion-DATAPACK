data modify block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.protection set from block ~ ~ ~ Items[{Slot:3b}]

execute if data block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".warming_module run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/warming
execute if data block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".cooling_module run item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/cooling

item replace block ~ ~ ~ container.3 with air