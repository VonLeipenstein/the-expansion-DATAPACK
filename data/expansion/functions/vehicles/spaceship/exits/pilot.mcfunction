# make the player ride the spaceship to make it easier to detect entities
ride @s mount @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# copy the spaceship item from the armor stand to the item display
execute on vehicle on vehicle on passengers at @s run item replace entity @s[type=minecraft:item_display,tag=exp.spaceship_display] container.0 from entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head
execute on vehicle on vehicle on passengers run item replace entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] armor.head with air

# synchronize the rotation of the display with the spaceship armor stand
execute on vehicle on vehicle on passengers store result entity @s[type=minecraft:item_display,tag=exp.spaceship_display] Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# change the model to the landed version
execute on vehicle on vehicle on passengers as @s[type=minecraft:item_display,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/increase_model

execute on vehicle on vehicle run tag @s[type=minecraft:armor_stand,tag=exp.spaceship] remove exp.player_inside

ride @s dismount

# reset the speed
scoreboard players set @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.speed 10

# make the spaceship float when exiting in zero gravity
execute if predicate expansion:dimension/zero_gravity run data merge entity @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] {NoGravity:1b}