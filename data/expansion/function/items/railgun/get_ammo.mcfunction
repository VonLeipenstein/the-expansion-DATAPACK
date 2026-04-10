# >>> generated function callers >>>
# Callers for expansion:items/railgun/get_ammo
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:items/railgun/shoot (1 caller) [OK same-folder]
# - function expansion:items/railgun/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result score #temp exp.ammo run data get entity @s SelectedItem.components."minecraft:custom_data".ammo
