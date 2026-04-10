# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/compress/insert_oxygen
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/compress/insert_check (1 caller) [OK same-folder]
# <<< generated function callers <<<

# refill calculation
scoreboard players add #target exp.oxygen_lvl 2000
execute if score #target exp.oxygen_lvl > #target exp.oxygen_max run scoreboard players operation #target exp.oxygen_lvl = #target exp.oxygen_max

# calculate containers new percentage
scoreboard players operation #input exp.math = #target exp.oxygen_lvl
scoreboard players operation #max exp.math = #target exp.oxygen_max
execute store result score #target exp.oxygen_percent run function expansion:utilities/percentage

# merge the new oxygen level with the tank
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #target exp.oxygen_lvl
# tank
scoreboard players operation #temp exp.oxygen_percent = #target exp.oxygen_percent
item modify entity @s container.0 expansion:oxygen_tank/merge_oxygen_level_from_data

# set the custom model data equal to the equipment data
# change the sources custom model data based on the oxygen percentage
scoreboard players operation #temp exp.oxygen_percent = #target exp.oxygen_percent
item modify entity @s container.0 expansion:oxygen_tank/merge_cmd_from_score

# signal the compressor to stop the compressing if the tank is 100%
execute if score #target exp.oxygen_lvl = #target exp.oxygen_max run scoreboard players set #temp exp.bool 1

# cosmetics
particle poof ~ ~1 ~ 0 0.1 0 0 2
playsound block.lava.extinguish block @a ~ ~ ~

# reset scores
scoreboard players reset #temp exp.oxygen_percent
scoreboard players reset #output exp.oxygen_percent