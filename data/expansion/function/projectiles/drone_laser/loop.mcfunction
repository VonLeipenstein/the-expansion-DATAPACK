# >>> generated function callers >>>
# Callers for expansion:projectiles/drone_laser/loop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

tp @s ^ ^ ^0.75

particle minecraft:dust{color:[1d,0d,0d],scale:1} ^ ^ ^ 0 0 0 5 1 force
particle minecraft:dust{color:[1d,0d,0d],scale:1} ^ ^ ^-.25 0 0 0 5 1 force
particle minecraft:dust{color:[1d,0d,0d],scale:1} ^ ^ ^-.5 0 0 0 5 1 force

execute positioned ~-.1 ~-.1 ~-.1 as @p[dx=0] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0] run function expansion:projectiles/drone_laser/damage

execute unless block ~ ~ ~ #expansion:air run kill @s

scoreboard players add @s exp.max_range 1
kill @s[scores={exp.max_range=50}]