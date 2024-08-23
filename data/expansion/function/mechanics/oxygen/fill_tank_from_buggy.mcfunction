# extract parameters
scoreboard players operation #source exp.oxygen_lvl = @s exp.oxygen_lvl
execute store result score #target exp.oxygen_lvl run data get entity @p[tag=exp.interacting_buggy] SelectedItem.components."minecraft:custom_data".oxygen_lvl
execute store result score #target exp.oxygen_max run data get entity @p[tag=exp.interacting_buggy] SelectedItem.components."minecraft:custom_data".oxygen_max

# refill calculation, returns the targets and sources' new oxygen level and percentage in scores
function expansion:mechanics/oxygen/refill_calculation

# change the sources custom model data based on the oxygen percentage
scoreboard players operation #temp exp.math = #target exp.oxygen_percent
execute store result score #tier exp.value run data get entity @p[tag=exp.interacting_buggy] SelectedItem.components."minecraft:custom_data".tier
function expansion:mechanics/oxygen/find_tank_cmd
item modify entity @p[tag=exp.interacting_buggy] weapon.mainhand expansion:oxygen_tank/merge_cmd_from_data

# merge new oxygen values with the source
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #target exp.oxygen_lvl
scoreboard players operation #temp exp.oxygen_percent = #target exp.oxygen_percent
item modify entity @p[tag=exp.interacting_buggy] weapon.mainhand expansion:oxygen_tank/merge_oxygen_level_from_data

# merge the new oxygen level with the buggy
scoreboard players operation @s exp.oxygen_lvl = #source exp.oxygen_lvl

# reset scores
scoreboard players reset #target exp.oxygen_lvl
scoreboard players reset #target exp.oxygen_max
scoreboard players reset #missing exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_lvl