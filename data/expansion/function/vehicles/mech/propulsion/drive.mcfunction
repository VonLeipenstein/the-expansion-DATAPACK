# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1
scoreboard players operation #input exp.math = #angle exp.math
# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const

# set the default speed
scoreboard players set @s exp.speed 7

# rotate the main entity of the mech slowly with the player view
execute at @s on passengers on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle on vehicle run function expansion:vehicles/mech/propulsion/rotate_mech_with_player

# make the legs turn with the mech
execute at @s rotated as @s on passengers if entity @s[tag=aj.mech_legs.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ 0

# prevent the mech from clipping inside walls
execute unless block ^ ^2.5 ^.9 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^2.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^.6 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision

# calculate the motion vector, only if a player is piloting the mech
execute if predicate expansion:passengers/player_on_stack run function expansion:vehicles/mech/propulsion/move

# going uphill (forwards and backwards)
execute unless block ^.35 ^ ^.35 #expansion:air if block ^.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^-.35 ^ ^.35 #expansion:air if block ^-.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^.35 ^ ^-.35 #expansion:air if block ^.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05
execute unless block ^-.35 ^ ^-.35 #expansion:air if block ^-.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05

# fall down
execute if block ^.35 ^-1 ^.35 #expansion:air if block ^-.35 ^-1 ^.35 #expansion:air if block ^.35 ^-1 ^-.35 #expansion:air if block ^-.35 ^-1 ^-.35 #expansion:air run tp @s ~ ~-1 ~