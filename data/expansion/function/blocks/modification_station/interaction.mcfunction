# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/interaction
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/player_nearby (1 caller) [OK same-folder]
# <<< generated function callers <<<

# detect button presses
execute unless items block ~ ~ ~ container.17 * run function expansion:blocks/modification_station/gui/buttons/upgrade_button
execute unless items block ~ ~ ~ container.26 * run function expansion:blocks/modification_station/gui/buttons/remove_button

# gui depending on selected vehicle
function expansion:blocks/modification_station/gui/main

# select a nearby selectable vehicle
scoreboard players reset #temp exp.bool
execute as @n[type=minecraft:armor_stand,tag=exp.moddable_vehicle,tag=!exp.mod_vehicle,tag=!exp.player_inside,distance=..50] run function expansion:blocks/modification_station/select_vehicle/find
execute if score #temp exp.bool matches 1 run function expansion:blocks/modification_station/select_vehicle/select