execute store result score #temp exp.fuel_max on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.stats.capacity
execute if score #temp exp.fuel_max matches 1.. run return 1
return fail