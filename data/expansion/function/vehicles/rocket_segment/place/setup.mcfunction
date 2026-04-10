tag @s remove exp.rocket_segment.new

# Mount the interacted entity, which is the clicked rocket segment
ride @s mount @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10]

# Copy the players held item and set the modle transformation
execute on passengers if entity @s[tag=exp.segment_display] run item replace entity @s contents from entity @p[tag=exp.clicking_player] weapon.mainhand expansion:utility/count_to_1
execute on passengers if entity @s[tag=exp.segment_display] run data merge entity @s {transformation:{scale:[2,2,2],translation:[0,1.25,0]}}

# Remove one from the held item count
execute as @p[tag=exp.clicking_player] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# Set the type tag for this segment
execute if predicate expansion:contents/rocket_segment/top run tag @s add exp.top_segment
execute if predicate expansion:contents/rocket_segment/body run tag @s add exp.body_segment
execute if predicate expansion:contents/rocket_segment/bottom run tag @s add exp.bottom_segment
# Set the ID tag for this segment
execute if predicate expansion:contents/rocket_segment/control run tag @s add exp.control_segment

# Get the segment scores
execute store result score @s exp.mass on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.stats.mass
execute store result score @s exp.engine_thrust on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.stats.thrust
execute store result score @s exp.fuel_max on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.stats.fuel
execute store result score @s exp.engine_efficiency on passengers if entity @s[tag=exp.segment_display] run data get entity @s item.components."minecraft:custom_data".rocket_segment.stats.efficiency

# Merge the segment scores with the vehicle root
scoreboard players operation #temp exp.mass = @s exp.mass
scoreboard players operation #temp exp.engine_thrust = @s exp.engine_thrust
scoreboard players operation #temp exp.engine_efficiency = @s exp.engine_efficiency
scoreboard players operation #temp exp.fuel_max = @s exp.fuel_max
scoreboard players operation #temp exp.fuel_level = @s exp.fuel_level
execute if predicate expansion:riding/rocket_segment run function expansion:vehicles/rocket_segment/merge_stats_with_root
scoreboard players reset #temp exp.mass
scoreboard players reset #temp exp.engine_thrust
scoreboard players reset #temp exp.engine_efficiency
scoreboard players reset #temp exp.fuel_max
scoreboard players reset #temp exp.fuel_level

# Aesthetics
execute at @s facing ~ ~-1 ~ run function expansion:blocks/rocket_parts/place_particles
execute as @p[tag=exp.clicking_player] run playsound minecraft:block.metal.place block @s