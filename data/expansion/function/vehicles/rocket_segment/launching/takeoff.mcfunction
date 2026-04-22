# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/launching/takeoff
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/launching/countdown (1 caller) [OK same-folder]
# <<< generated function callers <<<

# store the current y coordinate
execute store result score @s exp.dy run data get entity @s Pos[1] 1000
scoreboard players operation #temp exp.y = @s exp.dy
scoreboard players remove #temp exp.y 500000
scoreboard players operation #temp exp.y *= #-1 exp.const

# Calculate launch cost
execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/launch_cost

scoreboard players operation @s exp.timer_1 = #temp exp.y
scoreboard players operation @s exp.timer_1 /= #temp exp.fuel_level

scoreboard players reset #temp exp.y
scoreboard players reset #temp exp.fuel_level

tellraw @s [{"text":"interval: "},{"score":{"name":"@s","objective":"exp.timer_1"}},{"text":" blocks"}]

ride @s dismount
tag @s add exp.launching