execute if block ^ ^ ^0.2 #expansion:expansion_air run tp @s ^0.003 ^0.006 ^0.1
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force
tag @e[tag=!exp.shooting_ice,type=!marker,type=!item,distance=..2,limit=1,sort=furthest] add exp.freeze
scoreboard players add @s exp.max_range 1
execute as @s[scores={exp.max_range=..200}] at @s if block ^ ^ ^0.2 #expansion:expansion_air run function expansion:utilities/raycast/particle_loop