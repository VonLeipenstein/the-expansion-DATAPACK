tp @s ^ ^ ^0.5
particle dust 0.000 0.969 1.000 1 ~ ~ ~ 0 0 0 5 1 force
tag @e[type=#expansion:sentient,distance=..2,limit=1,sort=nearest] add exp.blast_dmg
scoreboard players add @s exp.max_range 1
execute as @s[scores={exp.max_range=..200}] at @s if block ^ ^ ^ #expansion:expansion_air run function expansion:vehicles/spaceship/blasters/loop


