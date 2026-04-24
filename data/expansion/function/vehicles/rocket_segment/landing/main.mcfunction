# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/landing/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# fuel errors
execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/fuel/total
execute if score #temp exp.fuel_level matches 0 run function expansion:utilities/error_messages/no_fuel
execute if score #temp exp.fuel_level matches 1..10 run function expansion:utilities/error_messages/low_fuel

# counter thrust if the rocket still has fuel.
execute unless function expansion:vehicles/rocket_segment/fuel_depleted run function expansion:vehicles/rocket_segment/landing/thrust
scoreboard players reset #temp exp.fuel_level

# detect landing
execute at @s unless block ~ ~-0.1 ~ #air if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/rocket_segment/landing/touchdown

# required to detect motion just before landing, to determine if the landing is a crash or not
execute store result score @s exp.dy run data get entity @s Motion[1] 100.0
