execute unless items block ~ ~ ~ container.0 * if data entity @s data.ModStorage.fuel.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/fuel
execute unless items block ~ ~ ~ container.9 * if data entity @s data.ModStorage.blaster.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/blaster
execute unless items block ~ ~ ~ container.18 * if data entity @s data.ModStorage.speed.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/speed
execute unless items block ~ ~ ~ container.5 * if data entity @s data.ModStorage.skin.id run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/skin

function expansion:vehicles/spaceship/summon/calculate_stats