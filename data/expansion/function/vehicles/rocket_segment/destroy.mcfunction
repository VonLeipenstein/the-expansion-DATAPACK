# recursively break mounted parts
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] at @s run function expansion:vehicles/rocket_segment/destroy

# drop this segment
execute on passengers if entity @s[tag=exp.segment_display] run loot spawn ~ ~ ~ loot expansion:slot/contents

# remove my segment from the root stats
scoreboard players operation #temp exp.mass = @s exp.mass
scoreboard players operation #temp exp.engine_thrust = @s exp.engine_thrust
scoreboard players operation #temp exp.engine_efficiency = @s exp.engine_efficiency
scoreboard players operation #temp exp.fuel_max = @s exp.fuel_max
scoreboard players operation #temp exp.fuel_level = @s exp.fuel_level

scoreboard players operation #temp exp.mass *= #-1 exp.const
scoreboard players operation #temp exp.engine_thrust *= #-1 exp.const
scoreboard players operation #temp exp.engine_efficiency *= #-1 exp.const
scoreboard players operation #temp exp.fuel_max *= #-1 exp.const
scoreboard players operation #temp exp.fuel_level *= #-1 exp.const
execute if predicate expansion:riding/rocket_segment run function expansion:vehicles/rocket_segment/merge_stats_with_root
scoreboard players reset #temp exp.mass
scoreboard players reset #temp exp.engine_thrust
scoreboard players reset #temp exp.engine_efficiency
scoreboard players reset #temp exp.fuel_max
scoreboard players reset #temp exp.fuel_level

# destroy the rocket segment stack
execute on passengers if entity @s[tag=exp.segment_display] run kill @s
execute on passengers if entity @s[tag=exp.rocketsegment_rcdet] run kill @s
kill @s