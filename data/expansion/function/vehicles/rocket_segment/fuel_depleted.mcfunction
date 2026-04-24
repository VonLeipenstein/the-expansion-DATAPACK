execute store result score #temp exp.fuel_level run function expansion:vehicles/rocket_segment/get_stat/fuel/total
execute unless score #temp exp.fuel_level matches 1.. run return 1
return fail
