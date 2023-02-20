execute if block ^ ^ ^0.2 #expansion:expansion_air run tp @s ^ ^ ^0.5
particle mycelium ~ ~ ~ 0 0 0 0.5 1 force
execute as @e[type=#expansion:sentient,tag=!exp.shooting,tag=!exp.railgun_hit,distance=..2,limit=1,sort=nearest] run function expansion:items/railgun/damage
scoreboard players add @s exp.max_range 1
execute as @s[scores={exp.max_range=..200}] at @s if block ^ ^ ^0.2 #expansion:expansion_air run function expansion:items/railgun/loop



