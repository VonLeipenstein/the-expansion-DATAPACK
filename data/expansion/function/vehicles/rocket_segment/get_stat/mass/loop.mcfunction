execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/mass/loop

execute store result score #temp exp.mass run function expansion:vehicles/rocket_segment/get_stat/mass/segment
scoreboard players operation #return exp.value += #temp exp.mass
scoreboard players reset #temp exp.mass
