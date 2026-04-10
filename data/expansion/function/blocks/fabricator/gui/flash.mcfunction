# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/gui/flash
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/player_nearby (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.cooldown matches 20 run data modify block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1] insert 1 value "flash"

execute if score @s exp.cooldown matches 12 run data remove block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1]

execute if score @s exp.cooldown matches 8 run data modify block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1] insert 1 value "flash"

execute if score @s exp.cooldown matches 1 run data remove block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_model_data.strings[1]

scoreboard players remove @s exp.cooldown 1
