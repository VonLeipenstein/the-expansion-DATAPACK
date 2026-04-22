execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/efficiency/total
execute store result score #temp exp.weight run function expansion:vehicles/rocket_segment/get_stat/weight

scoreboard players operation #temp exp.fuel_level *= #temp exp.weight
scoreboard players operation #temp exp.fuel_level /= #100 exp.const

scoreboard players operation #return exp.value = #temp exp.fuel_level

scoreboard players reset #temp exp.fuel_level
scoreboard players reset #temp exp.weight

return run scoreboard players get #return exp.value