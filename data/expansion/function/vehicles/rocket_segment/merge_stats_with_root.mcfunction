scoreboard players operation #temp exp.mass = @s exp.mass
scoreboard players operation #temp exp.engine_thrust = @s exp.engine_thrust
scoreboard players operation #temp exp.engine_efficiency = @s exp.engine_efficiency
scoreboard players operation #temp exp.fuel_max = @s exp.fuel_max
scoreboard players operation #temp exp.fuel_level = @s exp.fuel_level

# add or remove stat toggle
execute if score #subtract exp.bool matches 1 run scoreboard players operation #temp exp.mass *= #-1 exp.const
execute if score #subtract exp.bool matches 1 run scoreboard players operation #temp exp.engine_thrust *= #-1 exp.const
execute if score #subtract exp.bool matches 1 run scoreboard players operation #temp exp.engine_efficiency *= #-1 exp.const
execute if score #subtract exp.bool matches 1 run scoreboard players operation #temp exp.fuel_max *= #-1 exp.const
execute if score #subtract exp.bool matches 1 run scoreboard players operation #temp exp.fuel_level *= #-1 exp.const

execute if predicate expansion:riding/rocket_segment run function expansion:vehicles/rocket_segment/merge_stats_with_root_loop
scoreboard players reset #temp exp.mass
scoreboard players reset #temp exp.engine_thrust
scoreboard players reset #temp exp.engine_efficiency
scoreboard players reset #temp exp.fuel_max
scoreboard players reset #temp exp.fuel_level

scoreboard players reset #subtract exp.bool
