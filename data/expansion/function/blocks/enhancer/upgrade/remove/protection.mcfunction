loot replace block ~ ~ ~ container.3 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:3b}] set from block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.protection

item modify block ~ ~ ~ container.5 expansion:space_equipment/modules/remove

data remove block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.protection