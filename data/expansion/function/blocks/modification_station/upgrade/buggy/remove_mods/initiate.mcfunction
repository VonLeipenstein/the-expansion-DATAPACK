# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/remove (1 caller) [OK above +2]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.0 * if data entity @s data.ModStorage.speed_mod.id run function expansion:blocks/modification_station/upgrade/buggy/remove_mods/speed_mod
execute unless items block ~ ~ ~ container.9 * if data entity @s data.ModStorage.oxygen_tank.id run function expansion:blocks/modification_station/upgrade/buggy/remove_mods/oxygen_tank
