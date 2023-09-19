execute on target run tag @s add exp.entering_module
execute on target run tag @s add exp.inside_module
execute on target run tag @s add exp.inside_vehicle

execute on target if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/force_dismiss

# ride the camel
execute on vehicle on passengers if entity @s[type=camel,tag=exp.module_seats] run ride @p[tag=exp.entering_module] mount @s

execute on vehicle run scoreboard players add @s exp.passenger_count 1

execute on vehicle if score @s exp.passenger_count matches 1 run tag @p[tag=exp.entering_module] add exp.module_pilot

execute on target run tag @s remove exp.entering_module