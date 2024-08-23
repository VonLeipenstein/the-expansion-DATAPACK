# extract parameters
execute if items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] store result score #target exp.oxygen_lvl run data get entity @s item.components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_lvl
execute if items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] store result score #target exp.oxygen_max run data get entity @s item.components."minecraft:custom_data".ModStorage.oxygen_tank.components.minecraft:custom_data.oxygen_max
execute unless items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] store result score #target exp.oxygen_lvl run data get entity @s item.components."minecraft:custom_data".oxygen_lvl
execute unless items entity @s container.0 carrot_on_a_stick[custom_data~{space_equipment:1b}] store result score #target exp.oxygen_max run data get entity @s item.components."minecraft:custom_data".oxygen_max

# pressurize tank there is one which is not full
execute if score #target exp.oxygen_lvl < #target exp.oxygen_max unless score #target exp.oxygen_max matches ..0 run return run function expansion:blocks/compressor/compress/insert_oxygen

# if conditions arent met, stop compressing (mainly the animation)
scoreboard players set #temp exp.bool 1