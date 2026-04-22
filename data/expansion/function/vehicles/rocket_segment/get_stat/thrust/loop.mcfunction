execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/thrust/loop

execute store result score #temp exp.thrust run function expansion:vehicles/rocket_segment/get_stat/thrust/segment
scoreboard players operation #return exp.value += #temp exp.thrust
scoreboard players reset #temp exp.thrust
