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