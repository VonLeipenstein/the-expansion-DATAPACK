# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/enter
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/click_detection/rightclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

execute on target run tag @s add exp.entering_module
execute on target run tag @s add exp.inside_module
execute on target run tag @s add exp.inside_vehicle

execute on target if entity @s[tag=exp.has_active_drone] run function expansion:mobs/drone_pet/force_dismiss

# ride the camel
scoreboard players reset #temp exp.counter_1
execute on vehicle on passengers if entity @s[tag=exp.module_seats] run ride @p[tag=exp.entering_module] mount @s
execute on vehicle on passengers if entity @s[tag=exp.module_seats] on passengers if entity @s[type=player] run scoreboard players add #temp exp.counter_1 1
execute on vehicle if score #temp exp.counter_1 matches 1 run tag @p[tag=exp.entering_module] add exp.module_pilot
scoreboard players reset #temp exp.counter_1

execute on target run tag @s remove exp.entering_module