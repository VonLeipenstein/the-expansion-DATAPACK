execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/range/loop

execute store result score #temp exp.max_range run function expansion:vehicles/rocket_segment/get_stat/range/segment
scoreboard players operation #return exp.value += #temp exp.max_range
scoreboard players reset #temp exp.max_range
