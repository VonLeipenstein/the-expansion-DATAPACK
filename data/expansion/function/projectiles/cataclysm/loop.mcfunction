tp @s ^ ^ ^0.3

particle dust{color:[0d,0d,0d],scale:3} ~ ~ ~ .2 .2 .2 0 5 force
particle reverse_portal ~ ~ ~ .5 .5 .5 0 5 force
particle end_rod ~ ~ ~ 0 0 0 0.05 2 force

execute unless block ~ ~ ~ #expansion:air run function expansion:projectiles/cataclysm/hit_block

execute if predicate expansion:periodic/2 at @s summon marker run function expansion:projectiles/cataclysm/create_arc

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=200}]