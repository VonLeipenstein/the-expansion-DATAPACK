# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/apply_mods/apply_upgrade
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/apply (1 caller) [OK above +2]
# <<< generated function callers <<<

# merge the mod array with the spaceship
data modify entity @s data.ModStorage merge from storage expansion:temp ModStorage

# merge the mod values with the ship stats
data modify entity @s data.stats.speed_max.add_percent set from entity @s data.ModStorage.speed.components."minecraft:custom_data".speed_max.add_percent
data modify entity @s data.stats.fuel_max.add_percent set from entity @s data.ModStorage.fuel.components."minecraft:custom_data".fuel_max.add_percent
data modify entity @s data.stats.fuel_efficiency.add_percent set from entity @s data.ModStorage.fuel.components."minecraft:custom_data".fuel_efficiency.add_percent
data modify entity @s data.stats.blaster set from entity @s data.ModStorage.blaster.components."minecraft:custom_data".blaster
function expansion:vehicles/spaceship/summon/calculate_stats

# apply the spaceship cmd to both the spaceship and the display item
execute on passengers if entity @s[tag=exp.spaceship_display] run data modify entity @s item.components.minecraft:item_model set from storage expansion:temp ModStorage.skin.components.minecraft:item_model

# remove tag
tag @s remove exp.being_modified