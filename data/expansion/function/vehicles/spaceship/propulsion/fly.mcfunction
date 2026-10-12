# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/fly
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +1]
# - function expansion:vehicles/spaceship/propulsion/fall_down (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Calculate motion vector
function expansion:vehicles/spaceship/propulsion/motion_calculation

# determine when to remove fuel
scoreboard players add @s exp.timer_1 1
scoreboard players operation #temp exp.timer_1 = #spaceship_fuel_consumption exp.fuel_level
scoreboard players operation #temp exp.timer_1 *= @s exp.fuel_efficiency
scoreboard players operation #temp exp.timer_1 /= #100 exp.const
execute if score @s exp.timer_1 >= #temp exp.timer_1 run scoreboard players remove @s exp.fuel_level 1
scoreboard players reset #temp exp.timer_1
function expansion:utilities/fuel_percentage

# # make the correct particles run depending on the skin
# execute unless entity @s[tag=exp.hyperjumping] on passengers if predicate expansion:contents/spaceship on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/spaceship
# execute unless entity @s[tag=exp.hyperjumping] on passengers if predicate expansion:contents/zwaluw on vehicle at @s anchored eyes run function expansion:vehicles/spaceship/engine_particles/zwaluw

# # during hyperjump
# execute if entity @s[tag=exp.hyperjumping] run particle end_rod ^ ^ ^ 5 5 5 0 100
# execute if entity @s[tag=exp.hyperjumping] run effect give @p speed 1 5 true

# remove tag that locks the ships rotation
tag @s[tag=exp.ignore_player_rotation] remove exp.ignore_player_rotation