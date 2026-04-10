# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/oxygen/merge_scores_from_tank
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/buggy/apply_mods/apply_upgrade (1 caller) [WARN side/down 8]
# - function expansion:vehicles/buggy/summon/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute store result score @s exp.oxygen_max run data get entity @s data.ModStorage.oxygen_tank.components."minecraft:custom_data".oxygen.max
execute store result score @s exp.oxygen_lvl run data get entity @s data.ModStorage.oxygen_tank.components."minecraft:custom_data".oxygen.lvl
