loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:0b}] set from entity @s item.components.minecraft:custom_data.ModStorage.fuel
data remove entity @s item.components.minecraft:custom_data.ModStorage.fuel