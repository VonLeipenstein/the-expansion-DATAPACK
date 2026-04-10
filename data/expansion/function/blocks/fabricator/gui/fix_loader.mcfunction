# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/gui/fix_loader
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/gui/gui (1 caller) [OK same-folder]
# <<< generated function callers <<<

loot replace block ~ ~ ~ container.16 loot expansion:items/gui/loader/0
execute if score @s exp.timer_1 matches 1.. if score @s exp.counter_1 matches 124470.. store result block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data.floats[0] float 1 run scoreboard players get @s exp.counter_1