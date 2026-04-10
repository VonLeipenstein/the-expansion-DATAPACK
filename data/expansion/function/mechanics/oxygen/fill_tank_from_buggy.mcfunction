# >>> generated function callers >>>
# Callers for expansion:mechanics/oxygen/fill_tank_from_buggy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/buggy/click_detection/rightclick (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# extract parameters
scoreboard players operation #source exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_max = @s exp.oxygen_max
execute store result score #target exp.oxygen_lvl run data get entity @p[tag=exp.interacting_buggy] SelectedItem.components."minecraft:custom_data".oxygen.lvl
execute store result score #target exp.oxygen_max run data get entity @p[tag=exp.interacting_buggy] SelectedItem.components."minecraft:custom_data".oxygen.max

# refill calculation, returns the targets and sources' new oxygen level and percentage in scores
execute store result score @s exp.oxygen_lvl run function expansion:mechanics/oxygen/refill_calculation

# change the sources custom model data based on the oxygen percentage
scoreboard players operation #input exp.math = #source exp.oxygen_lvl
scoreboard players operation #max exp.math = #source exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:utilities/percentage
item modify entity @p[tag=exp.interacting_buggy] weapon.mainhand expansion:oxygen_tank/merge_cmd_from_score

# merge new oxygen values with the source
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #target exp.oxygen_lvl
scoreboard players operation #input exp.math = #target exp.oxygen_lvl
scoreboard players operation #max exp.math = #target exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:utilities/percentage
item modify entity @p[tag=exp.interacting_buggy] weapon.mainhand expansion:oxygen_tank/merge_oxygen_level_from_data

# reset scores
scoreboard players reset #target exp.oxygen_lvl
scoreboard players reset #target exp.oxygen_max
scoreboard players reset #missing exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_lvl