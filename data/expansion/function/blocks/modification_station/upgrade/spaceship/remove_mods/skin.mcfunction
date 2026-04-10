# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/remove_mods/skin
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.5 loot expansion:items/gui/filler

data modify block ~ ~ ~ Items[{Slot:5b}] set from entity @s data.ModStorage.skin
data remove entity @s data.ModStorage.skin

# update the cmd of the spaceship
data modify entity @s item.components.minecraft:custom_model_data.strings insert 1 value "landed"