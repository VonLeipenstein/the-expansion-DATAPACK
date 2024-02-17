tp @s ^ ^ ^0.75

particle dust 1 0 0 1 ^ ^ ^ 0 0 0 5 1 force
particle dust 1 0 0 1 ^ ^ ^-.25 0 0 0 5 1 force
particle dust 1 0 0 1 ^ ^ ^-.5 0 0 0 5 1 force

execute positioned ~-.1 ~-.1 ~-.1 as @p[dx=0,dy=0,dz=0] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0,dy=0,dz=0] run damage @s 4 expansion:drone_laser

execute unless block ~ ~ ~ #expansion:air run kill @s

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=50}]