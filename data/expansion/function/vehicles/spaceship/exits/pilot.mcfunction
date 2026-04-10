# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/exits/pilot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/exits/passenger (1 caller) [OK same-folder]
# <<< generated function callers <<<

# change the model to the landed version
execute on passengers as @s[tag=exp.spaceship_display] run data modify entity @s item.components.minecraft:custom_model_data.strings insert 1 value "landed"

tag @s remove exp.player_inside

# reset the speed
scoreboard players set @s exp.speed 10

# make the spaceship float when exiting in zero gravity
execute if predicate expansion:dimension/zero_gravity run data merge entity @s {NoGravity:1b}