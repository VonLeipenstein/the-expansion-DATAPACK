# >>> generated function callers >>>
# Callers for expansion:projectiles/cataclysm/loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

tp @s ^ ^ ^0.3

particle minecraft:dust_color_transition{from_color:[0,0,0],to_color:[0.2f,0f,0.5f],scale:3} ^ ^ ^ .3 .3 .3 0 10 force
particle reverse_portal ~ ~ ~ .5 .5 .5 0 5 force
particle electric_spark ~ ~ ~ .3 .3 .3 0.05 20 force

execute unless block ~ ~ ~ #expansion:air run function expansion:projectiles/cataclysm/hit_block

execute if predicate expansion:periodic/2 at @s summon marker run function expansion:projectiles/cataclysm/create_arc

execute if predicate expansion:periodic/5 at @s facing entity @e[type=#expansion:turret_target,distance=..10,limit=1] eyes positioned ^ ^ ^ rotated ~ ~ summon snowball run function expansion:projectiles/cataclysm/target_arc

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=200}]