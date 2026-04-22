execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/efficiency/loop

execute store result score #temp exp.fuel_efficiency run function expansion:vehicles/rocket_segment/get_stat/efficiency/segment
scoreboard players operation #return exp.value += #temp exp.fuel_efficiency
scoreboard players reset #temp exp.fuel_efficiency
