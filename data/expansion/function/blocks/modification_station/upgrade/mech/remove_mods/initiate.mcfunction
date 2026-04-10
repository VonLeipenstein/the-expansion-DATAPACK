# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/mech/remove_mods/initiate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/remove (1 caller) [OK above +2]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.9 * if data entity @s data.ModStorage.lefthand.id run function expansion:blocks/modification_station/upgrade/mech/remove_mods/lefthand
execute unless items block ~ ~ ~ container.14 * if data entity @s data.ModStorage.righthand.id run function expansion:blocks/modification_station/upgrade/mech/remove_mods/righthand