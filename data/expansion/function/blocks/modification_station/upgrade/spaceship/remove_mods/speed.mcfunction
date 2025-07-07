loot replace block ~ ~ ~ container.18 loot expansion:items/gui/filler
data modify block ~ ~ ~ Items[{Slot:18b}] set from entity @s data.ModStorage.speed

# substitute the bonus of this module
execute store result score #temp exp.hold_value run data get entity @s data.stats.speed_max.add_percent
execute store result score #temp exp.hold_value_alt run data get entity @s data.ModStorage.speed.components."minecraft:custom_data".speed_max.add_percent
scoreboard players operation #temp exp.hold_value -= #temp exp.hold_value_alt
execute store result entity @s data.stats.speed_max.add_percent int 1 run scoreboard players get #temp exp.hold_value

# reset variables
scoreboard players reset #temp exp.hold_value
scoreboard players reset #temp exp.hold_value_alt
data remove entity @s data.ModStorage.speed