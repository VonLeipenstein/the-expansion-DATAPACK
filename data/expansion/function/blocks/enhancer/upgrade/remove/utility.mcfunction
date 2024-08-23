loot replace block ~ ~ ~ container.6 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:6b}] set from block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.utility

data remove block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.utility