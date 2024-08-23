loot replace block ~ ~ ~ container.18 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:18b}] set from entity @s item.components.minecraft:custom_data.ModStorage.speed
data remove entity @s item.components.minecraft:custom_data.ModStorage.speed