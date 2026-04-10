# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/remove_mods/blaster
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.9 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s data.ModStorage.blaster
data remove entity @s data.ModStorage.blaster

data modify entity @s data.stats.blaster set value {type:"regular",id:0}