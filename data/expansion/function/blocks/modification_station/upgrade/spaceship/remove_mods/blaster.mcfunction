loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s item.components.minecraft:custom_data.ModStorage.blaster
data remove entity @s item.components.minecraft:custom_data.ModStorage.blaster