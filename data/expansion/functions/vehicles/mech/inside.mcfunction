# make torso rotate with the player
execute on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle on passengers if entity @s[tag=aj.mech_torso.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0
# make the seat rotate with the player
execute on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle if entity @s[tag=exp.mech_seat] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

execute on passengers on passengers if entity @s[type=player] run effect give @s speed 1 5 true

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

# teleport items to the pilots inventory
execute on passengers on passengers if entity @s[type=player] run tp @e[type=item,distance=..4,limit=5] @s

# during attacks
execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/main
execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/main

# movement
execute if score .total exp.wasd matches 1.. unless score @s exp.sneak_delay matches 1.. unless predicate expansion:dimension/zero_gravity run function expansion:vehicles/mech/propulsion/drive
