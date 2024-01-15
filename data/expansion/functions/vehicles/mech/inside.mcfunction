# block some features when the player just left the mech
execute if score @s exp.sneak_delay matches 1.. run function expansion:vehicles/mech/exit/delayed

# make torso rotate with the player
execute on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle on passengers if entity @s[tag=aj.mech_torso.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0
# make the seat rotate with the player
execute on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle if entity @s[tag=exp.mech_seat] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

# save if any of the directions is pressed
scoreboard players set .total exp.wasd 0
scoreboard players operation .total exp.wasd += .s exp.wasd
scoreboard players operation .total exp.wasd += .w exp.wasd
scoreboard players operation .total exp.wasd += .a exp.wasd
scoreboard players operation .total exp.wasd += .d exp.wasd

# walking animation control
execute unless score .s exp.wasd matches 1 if score .total exp.wasd matches 1.. if entity @s[tag=!exp.mech_walking] run function expansion:vehicles/mech/anim_control/start_walking
execute unless score .w exp.wasd matches 1 unless score .a exp.wasd matches 1 unless score .d exp.wasd matches 1 if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/stop_walking

execute if score .s exp.wasd matches 1 if entity @s[tag=!exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/start_walking_back
execute unless score .s exp.wasd matches 1 if entity @s[tag=exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/stop_walking_back

# attacks
execute if score @s exp.timer_1 matches 1.. run function expansion:vehicles/mech/attacks/main

# movement
execute if score .total exp.wasd matches 1.. unless score @s exp.sneak_delay matches 1.. unless predicate expansion:dimension/zero_gravity unless block ~ ~-.1 ~ #expansion:expansion_air run function expansion:vehicles/mech/propulsion/drive

# jumping
execute if score @s exp.jump matches 1.. run function expansion:vehicles/mech/jump/check
