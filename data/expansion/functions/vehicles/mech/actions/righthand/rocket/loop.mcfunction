scoreboard players operation #search exp.unique_id = @s exp.unique_id
execute at @s anchored feet facing entity @e[type=!#expansion:ignore,tag=!exp.block,tag=!exp.vehicle,predicate=expansion:compare_score/unique_id,limit=1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.5 ~ ~

# add rome random patterns
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~2 ~
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~-2 ~
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~ ~2
execute at @s if predicate expansion:chance/025_chance run tp @s ^ ^ ^ ~ ~-2

# avoid nearby blocks
execute at @s unless block ^ ^-1 ^ #expansion:air run tp @s ^ ^ ^ ~ ~-10
execute at @s unless block ^ ^1 ^ #expansion:air run tp @s ^ ^ ^ ~ ~10
execute at @s unless block ^-1 ^ ^ #expansion:air run tp @s ^ ^ ^ ~-10 ~
execute at @s unless block ^1 ^ ^ #expansion:air run tp @s ^ ^ ^ ~10 ~

# explode when hitting a block or when an entity is nearby
execute if score @s exp.cooldown matches 0 positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!#expansion:ignore,dx=0,dy=0,dz=0,limit=1] run function expansion:vehicles/mech/actions/righthand/rocket/explode
execute unless block ~ ~ ~ #expansion:air run function expansion:vehicles/mech/actions/righthand/rocket/explode

particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force
particle flame ^ ^ ^-0.5 0 0 0 0.05 2 force
particle flame ^ ^ ^ 0 0 0 0.05 2 force
particle flame ^ ^ ^-1 0 0 0 0.05 2 force

scoreboard players remove @s exp.max_range 1
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1

execute if score @s exp.max_range matches ..0 run function expansion:vehicles/mech/actions/righthand/rocket/explode
