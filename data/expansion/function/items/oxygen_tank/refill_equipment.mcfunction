# >>> generated function callers >>>
# Callers for expansion:items/oxygen_tank/refill_equipment
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/oxygen_tank/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Get tank parameters
data modify storage expansion:temp oxygen set from entity @s SelectedItem.components."minecraft:custom_data".oxygen
execute store result score #source exp.oxygen_lvl run data get storage expansion:temp oxygen.lvl
execute store result score #source exp.oxygen_max run data get storage expansion:temp oxygen.max
# Get suit parameters
function expansion:spacesuits/oxygen/get_data/init_loop
execute store result score #target exp.oxygen_lvl run scoreboard players get #temp exp.oxygen_lvl
execute store result score #target exp.oxygen_max run scoreboard players get #temp exp.oxygen_max

# Calculate oxygen transaction stats and update player oxygen
execute store result score @s exp.oxygen_lvl run function expansion:mechanics/oxygen/refill_calculation

# Update tank oxygen
scoreboard players operation #input exp.math = #source exp.oxygen_lvl
scoreboard players operation #max exp.math = #source exp.oxygen_max
execute store result score #temp exp.oxygen_percent run function expansion:utilities/percentage
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #source exp.oxygen_lvl
item modify entity @s weapon.mainhand expansion:oxygen_tank/merge_oxygen_level_from_data
item modify entity @s weapon.mainhand expansion:oxygen_tank/merge_cmd_from_score

# particle & sound
execute rotated ~ 0 run particle poof ^ ^1 ^-0.5 0.1 0.1 0.1 0 50
playsound block.lava.extinguish player @a ~ ~ ~

# reset scores
scoreboard players reset #target exp.oxygen_lvl
scoreboard players reset #target exp.oxygen_max
scoreboard players reset #missing exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_lvl
scoreboard players reset #source exp.oxygen_max