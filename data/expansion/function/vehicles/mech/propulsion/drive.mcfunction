# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/drive
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# set the default speed
scoreboard players set @s exp.speed 6

# jump if allowed
execute if function expansion:vehicles/mech/propulsion/jumping/allowed run tag @s add exp.mech_jumping
execute unless entity @s[tag=!exp.mech_jumping,tag=!exp.mech_jumped] run function expansion:vehicles/mech/propulsion/jumping/main

# calculate the motion vector
function expansion:vehicles/mech/propulsion/move

# rotate the root of the mech slowly with the player view
execute at @s on passengers on passengers if entity @s[tag=exp.mech_pilot] anchored eyes rotated as @s on vehicle on vehicle run function expansion:vehicles/mech/propulsion/rotate_root

# face the legs to the direction of the motion, as saved inside a marker
execute on passengers if entity @s[tag=exp.movedir] run function expansion:vehicles/mech/propulsion/rotate_legs

# make the mech go uphill and prevent it from clipping inside walls
function expansion:vehicles/mech/reinforce_fake_hitbox

# play forwards or backwards walking animation based on player input
execute if score @s exp.cooldown matches 1.. run return fail
execute unless entity @s[tag=!exp.mech_jumping,tag=!exp.mech_jumped] run return fail
execute if score @s exp.yaw matches -90..90 unless entity @s[tag=exp.mech_walking_forwards] run function expansion:vehicles/mech/anim_control/start_walking
execute unless score @s exp.yaw matches -90..90 unless entity @s[tag=exp.mech_walking_backwards] run function expansion:vehicles/mech/anim_control/start_walking_back