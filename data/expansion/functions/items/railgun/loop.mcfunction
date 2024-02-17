tp @s ^ ^ ^0.5
particle mycelium ~ ~ ~ 0 0 0 0.5 1 force
execute positioned ~-.05 ~-.05 ~-.05 as @e[type=#expansion:sentient,tag=!exp.shooting,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 if entity @s[dx=0,dy=0,dz=0] run function expansion:items/railgun/damage
scoreboard players add @s exp.max_range 1
execute unless block ~ ~ ~ #expansion:air run kill @s
kill @s[scores={exp.max_range=200}]
execute at @s[scores={exp.max_range=..200}] run function expansion:items/railgun/loop



