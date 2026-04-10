# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/get_ammo
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cryoblaster/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

# get the current ammo of the cryoblaster and store it inside exp.ammo
execute store result score #temp exp.ammo run data get entity @s SelectedItem.components."minecraft:custom_data".ammo

execute unless score #temp exp.ammo matches 0.. run scoreboard players set #temp exp.ammo 0
