# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/buggy/remove_mods/speed_mod
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler

data modify block ~ ~ ~ Items[{Slot:0b}] set from entity @s data.ModStorage.speed_mod

data remove entity @s data.ModStorage.speed_mod

scoreboard players set @s exp.speed_mod 10