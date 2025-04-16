# rotate towards the target
execute at @s anchored feet on passengers if entity @s[type=snowball] on origin facing entity @s eyes as @e[type=item_display,tag=exp.homing_rocket,distance=..0.1] positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

# add rome random patterns
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~2 ~
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~-2 ~
execute at @s if predicate expansion:chance/025_chance run rotate @s ~ ~2
execute at @s if predicate expansion:chance/025_chance run rotate @s ~ ~-2

# avoid nearby blocks
execute at @s unless block ^ ^-1 ^ #expansion:air run rotate @s ~ ~-10
execute at @s unless block ^ ^1 ^ #expansion:air run rotate @s ~ ~10
execute at @s unless block ^-1 ^ ^ #expansion:air run tp @s ^ ^ ^ ~-10 ~
execute at @s unless block ^1 ^ ^ #expansion:air run tp @s ^ ^ ^ ~10 ~

# fly forwards with the current rotation
execute at @s run tp @s ^ ^ ^1.2

# explode when hitting a block or when an entity is nearby
execute if score @s exp.cooldown matches 0 positioned ~-.5 ~-.5 ~-.5 if entity @n[type=!#expansion:ignore,dx=0,dy=0,dz=0] run function expansion:projectiles/homing_rocket/explode
execute unless block ~ ~ ~ #expansion:air run function expansion:projectiles/homing_rocket/explode

#particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force
#particle flame ^ ^ ^-0.5 0 0 0 0.01 2 force
#particle flame ^ ^ ^ 0 0 0 0.01 2 force
#particle flame ^ ^ ^-1 0 0 0 0.01 2 force
particle minecraft:dust{color:[0.000d,0.969d,1.000d],scale:1} ^ ^ ^ 0.1 0 0.1 0 10 force

scoreboard players remove @s exp.max_range 1
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1

execute if score @s exp.max_range matches ..0 run function expansion:projectiles/homing_rocket/explode


