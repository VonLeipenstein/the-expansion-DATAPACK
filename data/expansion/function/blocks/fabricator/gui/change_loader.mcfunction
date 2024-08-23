execute store result score @s exp.counter_1 run data get block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data
scoreboard players add @s exp.counter_1 1
execute store result block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data double 1 run scoreboard players get @s exp.counter_1
