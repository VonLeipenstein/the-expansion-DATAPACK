execute on passengers on passengers run function expansion:vehicles/rocket_segment/get_stat/fuel/loop

execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/fuel/segment
scoreboard players operation #return exp.value += #temp exp.fuel_level
scoreboard players reset #temp exp.fuel_level
