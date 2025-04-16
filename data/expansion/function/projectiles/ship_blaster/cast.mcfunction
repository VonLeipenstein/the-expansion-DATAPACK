execute unless function expansion:projectiles/slowcaster_debug run return fail

# render the bullet
item replace entity @s container.0 with poisonous_potato[item_model="expansion:laser_bullet"]
data merge entity @s {transformation:{scale:[3,3,3]},teleport_duration:1,brightness:{block:15,sky:15}}

tag @s add exp.ship_blaster
tag @s add exp.slowcast

# set parameters (can be set externally thanks to the fakeplayer)
scoreboard players operation @s exp.max_range = #temp exp.max_range
scoreboard players operation @s exp.speed = #temp exp.speed
scoreboard players operation @s exp.unique_id = #temp exp.unique_id

# align the bullet
execute positioned ^ ^ ^ run rotate @s ~ ~
