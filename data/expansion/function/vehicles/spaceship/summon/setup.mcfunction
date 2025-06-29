function expansion:blocks/set_rotation

# set the model from the players hand item
execute on passengers if entity @s[tag=exp.spaceship_display] run item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# set model transformations
execute on passengers if entity @s[tag=exp.spaceship_display] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]},interpolation_duration:5,teleport_duration:5}

# merge model rotation with the base entity
execute on passengers if entity @s[tag=exp.spaceship_display] store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# switch the model to the landed version
execute on passengers if entity @s[tag=exp.spaceship_display] run data modify entity @s item.components.minecraft:custom_model_data.strings insert 1 value "landed"

# adjust seat scale to put the player at the correct height
attribute @s minecraft:scale base set 0.82

# apply nogravity if in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

# copy the fuel level from the players hand item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.components."minecraft:custom_data".fuel_lvl

# deactivate the markers
function expansion:vehicles/spaceship/markers/deactivate_markers

# set scores
scoreboard players set @s exp.fuel_max 24000
scoreboard players set @s exp.speed 10

tag @s remove exp.new_vehicle