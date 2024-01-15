# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1
scoreboard players operation #input exp.math = #angle exp.math
# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const

# rotate the mech slowly with the player view
# walking forwards/backwards
execute unless score .a exp.wasd matches 1 unless score .d exp.wasd matches 1 on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s on vehicle on vehicle positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0
# walking sideways
execute if score .a exp.wasd matches 1 unless score .s exp.wasd matches 1 on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s rotated ~-90 ~ on vehicle on vehicle positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~-0.1 0
execute if score .d exp.wasd matches 1 unless score .s exp.wasd matches 1 on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s rotated ~90 ~ on vehicle on vehicle positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~0.1 0
execute if score .a exp.wasd matches 1 if score .s exp.wasd matches 1 on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s rotated ~90 ~ on vehicle on vehicle positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~0.1 0
execute if score .d exp.wasd matches 1 if score .s exp.wasd matches 1 on passengers on passengers if entity @s[type=player] anchored eyes rotated as @s rotated ~-90 ~ on vehicle on vehicle positioned ^ ^ ^3.5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~-0.1 0

# make the legs turn with the mech
execute rotated as @s on passengers run tp @s[tag=aj.mech_legs.root] ~ ~ ~ ~ ~

# calculate the motion vector
function expansion:vehicles/mech/propulsion/move

# going up- and downhill
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air if block ^ ^1.5 ^1 #expansion:expansion_air run tp @s ^ ^1 ^0.2
execute rotated ~ 0 if block ~ ~-.1 ~ #expansion:expansion_air run tp @s ~ ~-.1 ~

# stop the mech when it hits something
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run scoreboard players set @s exp.speed 0
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:expansion_air unless block ^ ^1.5 ^1 #expansion:expansion_air run tp @s ^ ^ ^-0.1
execute rotated ~ 0 unless block ^ ^0.5 ^-1 #expansion:expansion_air unless block ^ ^1.5 ^-1 #expansion:expansion_air run tp @s ^ ^ ^0.1
