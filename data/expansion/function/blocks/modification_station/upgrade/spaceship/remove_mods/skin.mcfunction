loot replace block ~ ~ ~ container.5 loot expansion:items/gui/filler

data modify block ~ ~ ~ Items[{Slot:5b}] set from entity @s data.ModStorage.skin
data remove entity @s data.ModStorage.skin

# update the cmd of the spaceship
data modify entity @s item.components.minecraft:custom_model_data.strings insert 1 value "landed"