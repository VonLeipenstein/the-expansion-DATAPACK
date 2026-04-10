# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/get_mode
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:items/cryoblaster/switch_modes (1 caller) [OK same-folder]
# - function expansion:items/cryoblaster/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #temp exp.hold_value 0

# extract the current mode from the item
execute store result score #temp exp.hold_value run data get entity @s SelectedItem.components."minecraft:custom_data".mode

# set the ammo requirement for each mode
execute if score #temp exp.hold_value matches 0 run scoreboard players set #temp exp.hold_value_alt 1
execute if score #temp exp.hold_value matches 1 run scoreboard players set #temp exp.hold_value_alt 5
execute if score #temp exp.hold_value matches 2 run scoreboard players set #temp exp.hold_value_alt 10