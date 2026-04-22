execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/capacity/loop

execute store result score #temp exp.fuel_max run function expansion:vehicles/rocket_segment/get_stat/capacity/segment
scoreboard players operation #return exp.value += #temp exp.fuel_max
scoreboard players reset #temp exp.fuel_max
