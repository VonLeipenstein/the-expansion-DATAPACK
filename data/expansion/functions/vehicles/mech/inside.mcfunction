# make torso rotate with the player
execute on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle on passengers if entity @s[tag=aj.mech_torso.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

# walking animation control
execute if score .w exp.wasd matches 1 if entity @s[tag=!exp.mech_walking] run function expansion:vehicles/mech/anim_control/start_walking
execute unless score .w exp.wasd matches 1 if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/stop_walking

# movement
execute if score .w exp.wasd matches 1 unless predicate expansion:dimension/zero_gravity run function expansion:vehicles/mech/propulsion/drive