function expansion:blocks/set_rotation

# set the model from the players hand item
execute on passengers if entity @s[tag=exp.spaceship_display] run item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# copy the stored stats to the base entity
data remove storage expansion:temp data
execute on passengers if entity @s[tag=exp.spaceship_display] run data modify storage expansion:temp stats set from entity @s item.components."minecraft:custom_data".stats
data modify entity @s data.stats set from storage expansion:temp stats
data remove storage expansion:temp stats

# Copy the fuel cell to its storage entity and set the stats
execute on passengers if entity @s[tag=exp.spaceship_display] run data modify storage expansion:temp fuel_cell set from entity @s item.components."minecraft:custom_data".fuel_cell
execute on passengers if entity @s[tag=exp.fuel_slot] run data modify entity @s item set from storage expansion:temp fuel_cell
execute store result score @s exp.fuel_level on passengers if entity @s[tag=exp.fuel_slot] run data get entity @s item.components."minecraft:custom_data".fuel.lvl
execute store result score @s exp.fuel_max on passengers if entity @s[tag=exp.fuel_slot] run data get entity @s item.components."minecraft:custom_data".fuel.max
execute store result entity @s data.stats.fuel_max.base int 1 run scoreboard players get @s exp.fuel_max
data remove storage expansion:temp fuel_cell

# initiate Model
execute on passengers if entity @s[tag=exp.spaceship_display] run function expansion:vehicles/spaceship/summon/init_model

# hide the fuel cell item
execute on passengers if entity @s[tag=exp.fuel_slot] run data merge entity @s {transformation:{scale:[0f,0f,0f]}}

# adjust seat scale to put the player at the correct height
attribute @s minecraft:scale base set 0.82

# apply nogravity if in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

# base speed
scoreboard players set @s exp.speed 10

# deactivate the markers
function expansion:vehicles/spaceship/markers/deactivate_markers

# setup the stats
function expansion:vehicles/spaceship/summon/calculate_stats

tag @s remove exp.new_vehicle