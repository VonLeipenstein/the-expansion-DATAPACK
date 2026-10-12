scoreboard players remove #remove exp.fuel_level 1
scoreboard players remove @s exp.fuel_level 1

execute on passengers if entity @s[tag=exp.segment_display] run function expansion:vehicles/rocket_segment/fuel/update_indicator

return 1