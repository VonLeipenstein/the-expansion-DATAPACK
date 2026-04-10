# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/remove (1 caller) [OK above +2]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.0 * if data entity @s data.ModStorage.fuel.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/fuel
execute unless items block ~ ~ ~ container.9 * if data entity @s data.ModStorage.blaster.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/blaster
execute unless items block ~ ~ ~ container.18 * if data entity @s data.ModStorage.speed.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/speed
execute unless items block ~ ~ ~ container.5 * if data entity @s data.ModStorage.skin.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/skin

function expansion:vehicles/spaceship/summon/calculate_stats