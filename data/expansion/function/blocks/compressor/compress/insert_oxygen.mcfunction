# refill calculation
scoreboard players add #target exp.oxygen_lvl 2000
execute if score #target exp.oxygen_lvl > #target exp.oxygen_max run scoreboard players operation #target exp.oxygen_lvl = #target exp.oxygen_max

# calculate containers new percentage
scoreboard players operation #input exp.oxygen_lvl = #target exp.oxygen_lvl
scoreboard players operation #input exp.oxygen_max = #target exp.oxygen_max
execute store result score #target exp.oxygen_percent run function expansion:mechanics/oxygen/oxygen_percentage

# merge the new oxygen level with the tank
execute store result storage expansion:oxygen_calc data.oxygen_lvl int 1 run scoreboard players get #target exp.oxygen_lvl
# tank
scoreboard players operation #temp exp.oxygen_percent = #target exp.oxygen_percent
execute unless items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] run item modify entity @s container.0 expansion:oxygen_tank/merge_oxygen_level_from_data
# equipment
execute if items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] store result score #temp exp.hold_value run data get entity @s item.components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.tier
execute if items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] run item modify entity @s container.0 expansion:oxygen_tank/merge_with_equipment

# set the custom model data equal to the equipment data
# change the sources custom model data based on the oxygen percentage
scoreboard players operation #temp exp.math = #target exp.oxygen_percent
execute store result score #tier exp.value run data get entity @s item.components.minecraft:custom_data.tier
function expansion:mechanics/oxygen/find_tank_cmd
#execute unless items entity @s container.0 carrot_on_a_stick[custom_data~{oxygen_tank:1b}] run data modify storage expansion:oxygen_calc data.tank_cmd set from entity @s item.components."minecraft:custom_model_data"
# else, change the oxygen tank model with the oxygen level
execute if items entity @s container.0 carrot_on_a_stick[custom_data~{oxygen_tank:1b}] run item modify entity @s container.0 expansion:oxygen_tank/merge_cmd_from_data

# signal the compressor to stop the compressing if the tank is 100%
execute if score #target exp.oxygen_lvl = #target exp.oxygen_max run scoreboard players set #temp exp.bool 1

# cosmetics
particle poof ~ ~1 ~ 0 0.1 0 0 2
playsound block.lava.extinguish block @a ~ ~ ~

# reset scores
scoreboard players reset #temp exp.oxygen_percent
scoreboard players reset #output exp.oxygen_percent