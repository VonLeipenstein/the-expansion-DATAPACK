# fuel required to launch from origin
scoreboard players operation #origin_required exp.fuel_level = #temp exp.engine_efficiency
return run scoreboard players operation #origin_required exp.fuel_level *= #origin exp.weight

# fuel required to launch from destination
scoreboard players operation #destination_required exp.fuel_level = #temp exp.engine_efficiency
return run scoreboard players operation #destination_required exp.fuel_level *= #destination exp.weight

# trip fuel requirement
scoreboard players set #trip_required exp.fuel_level 25
scoreboard players operation #trip_required exp.fuel_level *= #2 exp.const

# total fuel requirement
scoreboard players operation #total_required exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #destination_required exp.fuel_level
scoreboard players operation #total_required exp.fuel_level += #trip_required exp.fuel_level