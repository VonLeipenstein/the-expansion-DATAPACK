execute if score @s exp.cooldown matches 20 run data modify block ~ ~ ~ Items[{Slot:4b}].components.minecraft:custom_model_data set value 124424

execute if score @s exp.cooldown matches 12 run data modify block ~ ~ ~ Items[{Slot:4b}].components.minecraft:custom_model_data set value 124420

execute if score @s exp.cooldown matches 8 run data modify block ~ ~ ~ Items[{Slot:4b}].components.minecraft:custom_model_data set value 124424

execute if score @s exp.cooldown matches 1 run data modify block ~ ~ ~ Items[{Slot:4b}].components.minecraft:custom_model_data set value 124420

scoreboard players remove @s exp.cooldown 1