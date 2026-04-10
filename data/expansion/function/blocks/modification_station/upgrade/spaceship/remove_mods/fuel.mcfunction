# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/spaceship/remove_mods/fuel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.0 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:0b}] set from entity @s data.ModStorage.fuel

# substitute the bonus of this module
execute store result score #temp exp.hold_value run data get entity @s data.stats.fuel_efficiency.add_percent
execute store result score #temp exp.hold_value_alt run data get entity @s data.ModStorage.fuel.components."minecraft:custom_data".fuel_efficiency.add_percent
scoreboard players operation #temp exp.hold_value -= #temp exp.hold_value_alt
execute store result entity @s data.stats.fuel_efficiency.add_percent int 1 run scoreboard players get #temp exp.hold_value

# reset variables
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.hold_value_alt
data remove entity @s data.ModStorage.fuel