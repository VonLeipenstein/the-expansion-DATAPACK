# set the model from the players hand item
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.spaceship_display] run item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

# set model transformations
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.spaceship_display] run data merge entity @s {transformation:{translation:[0.0f,2.0f,0.0f],scale:[0.6f,0.6f,0.6f]}}

# merge model rotation with the base entity
execute on passengers if entity @s[type=minecraft:item_display,tag=exp.spaceship_display] store result entity @s Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# switch the model to the landed version
execute on passengers as @s[type=minecraft:item_display,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/increase_model

execute on passengers run attribute @s[type=minecraft:armor_stand,tag=exp.spaceship_display] minecraft:generic.scale base set 1.4

# apply nogravity if in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

# copy the fuel level from the players hand item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.components.minecraft:custom_data.fuel_lvl

# set scores
scoreboard players set @s exp.fuel_max 256
scoreboard players set @s exp.speed 10