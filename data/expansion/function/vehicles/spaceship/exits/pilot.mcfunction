# synchronize the rotation of the display with the spaceship armor stand
rotate @s ~ 0
execute rotated as @s on passengers run rotate @s ~ ~

# change the model to the landed version
execute on passengers as @s[tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/increase_model

tag @s remove exp.player_inside

# reset the speed
scoreboard players set @s exp.speed 10

# make the spaceship float when exiting in zero gravity
execute if predicate expansion:dimension/zero_gravity run data merge entity @s {NoGravity:1b}