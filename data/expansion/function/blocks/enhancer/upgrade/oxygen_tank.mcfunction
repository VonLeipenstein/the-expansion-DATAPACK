function expansion:blocks/enhancer/upgrade/merge_oxygen

data modify block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_data.ModStorage.oxygen_tank set from block ~ ~ ~ Items[{Slot:0b}]

item replace block ~ ~ ~ container.0 with air