# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/gui/change_loader
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute store result score @s exp.counter_1 run data get block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data.floats[0]
scoreboard players add @s exp.counter_1 1
execute store result block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data.floats[0] float 1 run scoreboard players get @s exp.counter_1
