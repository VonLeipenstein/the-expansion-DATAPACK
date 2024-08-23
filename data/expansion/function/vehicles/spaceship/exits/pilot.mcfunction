# copy the spaceship item from the armor stand to the item display
execute on passengers at @s run item replace entity @s[type=minecraft:item_display,tag=exp.spaceship_display] container.0 from entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head
execute on passengers run item replace entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] armor.head with air

# synchronize the rotation of the display with the spaceship armor stand
execute on passengers store result entity @s[type=minecraft:item_display,tag=exp.spaceship_display] Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# change the model to the landed version
execute on passengers as @s[type=minecraft:item_display,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/increase_model

tag @s remove exp.player_inside

# reset the speed
scoreboard players set @s exp.speed 10

# make the spaceship float when exiting in zero gravity
execute if predicate expansion:dimension/zero_gravity run data merge entity @s {NoGravity:1b}