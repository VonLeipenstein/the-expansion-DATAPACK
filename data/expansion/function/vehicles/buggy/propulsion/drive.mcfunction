# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1
scoreboard players operation #input exp.math = #angle exp.math

# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const

# turn when pressing a or d
scoreboard players operation #turn exp.math = #angle exp.math
execute if score .a exp.wasd matches 1 unless score .d exp.wasd matches 1 on passengers at @s run function expansion:vehicles/buggy/propulsion/turn_left
execute if score .d exp.wasd matches 1 unless score .a exp.wasd matches 1 on passengers at @s run function expansion:vehicles/buggy/propulsion/turn_right
execute on passengers rotated as @s[tag=exp.buggy_turn] on vehicle positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-5 positioned as @s run tp @s ~ ~ ~ ~ 0
execute on passengers rotated as @s[tag=exp.buggy_turn] on vehicle on passengers if entity @s[tag=aj.buggy.root] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-5 positioned as @s run tp @s ~ ~ ~ ~ 0

# zero gravity
execute if predicate expansion:dimension/zero_gravity if score @s exp.speed matches ..-11 unless block ^ ^-1 ^-1 #expansion:air run data merge entity @s[nbt={NoGravity:1b}] {NoGravity:0b}
execute if predicate expansion:dimension/zero_gravity if score @s exp.speed matches 11.. unless block ^ ^-1 ^1 #expansion:air run data merge entity @s[nbt={NoGravity:1b}] {NoGravity:0b}

# calculate the motion vector
function expansion:vehicles/buggy/propulsion/move

# going uphill (forwards and backwards)
execute unless block ^.35 ^ ^.35 #expansion:air if block ^.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^-.35 ^ ^.35 #expansion:air if block ^-.35 ^1 ^.35 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^.35 ^ ^-.35 #expansion:air if block ^.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05
execute unless block ^-.35 ^ ^-.35 #expansion:air if block ^-.35 ^1 ^-.35 #expansion:air run tp @s ^ ^1 ^-0.05

# fall down
execute if block ^.35 ^-1 ^.35 #expansion:air if block ^-.35 ^-1 ^.35 #expansion:air if block ^.35 ^-1 ^-.35 #expansion:air if block ^-.35 ^-1 ^-.35 #expansion:air run tp @s ~ ~-1 ~

# stop the buggy when it hits something
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:air unless block ^ ^1.5 ^1 #expansion:air run scoreboard players set @s exp.speed 0
execute rotated ~ 0 unless block ^ ^0.5 ^1 #expansion:air unless block ^ ^1.5 ^1 #expansion:air run tp @s ^ ^ ^-0.1
execute rotated ~ 0 unless block ^ ^0.5 ^-1 #expansion:air unless block ^ ^1.5 ^-1 #expansion:air run tp @s ^ ^ ^0.1

# calculate percentage of speed
#scoreboard players operation #speed exp.math = @s exp.speed
#scoreboard players operation #temp exp.speed_mod = @s exp.speed_mod
#scoreboard players operation #temp exp.speed_mod += #40 exp.const
#execute unless score @s exp.speed matches ..-11 run scoreboard players remove #speed exp.math 10
#execute if score @s exp.speed matches ..-11 run scoreboard players add #speed exp.math 10
#scoreboard players operation #speed exp.math *= #100 exp.const
#scoreboard players operation #speed exp.math /= #temp exp.speed_mod

scoreboard players set #offset exp.math 5
scoreboard players set #total exp.math 45
execute store result score #temp exp.speed run function expansion:vehicles/spaceship/propulsion/speed_percentage

# launch mobs you hit, I was extremely bored when I made this and this made my day just a little better
execute if score @s exp.speed matches 50.. positioned ^ ^ ^2 as @e[distance=..1.9,nbt={OnGround:1b}] run function expansion:vehicles/buggy/hit_mob

# aesthetic effects
function expansion:vehicles/buggy/sound_loop