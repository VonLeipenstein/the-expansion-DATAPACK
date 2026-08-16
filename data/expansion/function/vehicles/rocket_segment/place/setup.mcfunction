# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.rocket_segment.new

# Mount the interacted entity, which is the clicked rocket segment
ride @s mount @n[type=minecraft:interaction,tag=exp.clicked_entity,distance=..10]

# Copy the players held item and set the modle transformation
execute on passengers if entity @s[tag=exp.segment_display] run item replace entity @s contents from entity @p[tag=exp.clicking_player] weapon.mainhand expansion:utility/count_to_1
execute on passengers if entity @s[tag=exp.segment_display] run data merge entity @s {transformation:{scale:[2,2,2],translation:[0,0.875,0]}}

# set the hitbox width and height
execute on passengers if entity @s[tag=exp.segment_display] run data modify storage expansion:temp size set from entity @s item.components."minecraft:custom_data".rocket_segment.size
execute on passengers if entity @s[tag=exp.rocketsegment_rcdet] run data modify entity @s width set from storage expansion:temp size.width
execute on passengers if entity @s[tag=exp.rocketsegment_rcdet] run data modify entity @s height set from storage expansion:temp size.height
data remove storage expansion:temp size

# Remove one from the held item count
execute as @p[tag=exp.clicking_player] run item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# Set the type tag for this segment
execute if predicate expansion:contents/rocket_segment/top run tag @s add exp.top_segment
execute if predicate expansion:contents/rocket_segment/body run tag @s add exp.body_segment
execute if predicate expansion:contents/rocket_segment/bottom run tag @s add exp.bottom_segment
# Set the ID tag for this segment
execute if predicate expansion:contents/rocket_segment/control run function expansion:vehicles/rocket_segment/control/place
execute if predicate expansion:contents/rocket_segment/fuel run function expansion:vehicles/rocket_segment/fuel/place

# if placed on a launchpad, merge the destination and origin
execute store result score @s exp.origin on vehicle on vehicle if entity @s[tag=exp.launch_pad] run scoreboard players get @s exp.origin
execute store result score @s exp.destination on vehicle on vehicle if entity @s[tag=exp.launch_pad] run scoreboard players get @s exp.destination

# Aesthetics
execute at @s facing ~ ~-1 ~ run function expansion:blocks/rocket_parts/place_particles
execute as @p[tag=exp.clicking_player] run playsound minecraft:block.metal.place block @s