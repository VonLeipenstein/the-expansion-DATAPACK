# extract parameters
execute store result score #source exp.oxygen_max run data get entity @s SelectedItem.components."minecraft:custom_data".oxygen_max
scoreboard players operation #target exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #target exp.oxygen_max = @s exp.oxygen_max

# refill calculation, returns the targets and sources' new oxygen level and percentage in scores
function expansion:mechanics/oxygen/refill_calculation

# change the sources custom model data based on the oxygen percentage
scoreboard players operation #temp exp.math = #source exp.oxygen_percent
execute store result score #tier exp.value run data get entity @s SelectedItem.components."minecraft:custom_data".tier
function expansion:mechanics/oxygen/find_tank_cmd
item modify entity @s weapon.mainhand expansion:oxygen_tank/merge_cmd_from_data

# merge new oxygen values with the source
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #source exp.oxygen_lvl
scoreboard players operation #temp exp.oxygen_percent = #source exp.oxygen_percent
item modify entity @s weapon.mainhand expansion:oxygen_tank/merge_oxygen_level_from_data

# merge new oxygen values with the target
scoreboard players operation @s exp.oxygen_lvl = #target exp.oxygen_lvl

# aesthetics
execute rotated ~ 0 run particle poof ^ ^1 ^-0.5 0.1 0.1 0.1 0 50
playsound block.lava.extinguish player @a ~ ~ ~

# reset scores
scoreboard players reset #target exp.oxygen_lvl
scoreboard players reset #target exp.oxygen_max
scoreboard players reset #missing exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_max