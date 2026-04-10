# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/fuel/remove
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/fly (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# base fuel reduction
scoreboard players operation #temp exp.fuel_level = #spaceship_fuel_consumption exp.fuel_level

# reduction calculation
scoreboard players operation #temp exp.fuel_level *= @s exp.fuel_efficiency
scoreboard players operation #temp exp.fuel_level /= #100 exp.const
scoreboard players operation @s exp.fuel_level -= #temp exp.fuel_level

# reset temp score
scoreboard players reset #temp exp.fuel_level