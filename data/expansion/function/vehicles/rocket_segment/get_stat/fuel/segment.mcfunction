scoreboard players reset #temp exp.hold_value
execute on passengers if entity @s[tag=exp.fuel_storage] run function expansion:vehicles/rocket_segment/get_stat/fuel/storage
return run scoreboard players get #temp exp.hold_value