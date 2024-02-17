scoreboard players operation #search exp.unique_id = @s exp.unique_id
execute if entity @e[type=!#expansion:ignore,predicate=expansion:compare_score/unique_id,limit=1] at @s anchored feet facing entity @e[type=!#expansion:ignore,predicate=expansion:compare_score/unique_id,limit=1] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.5 ~ ~
execute unless entity @e[type=!#expansion:ignore,predicate=expansion:compare_score/unique_id,limit=1] run tp @s ^ ^ ^1.5 ~ ~

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

# explode when hittong a block or when an entity is nearby
execute if entity @e[type=!#expansion:ignore,distance=..3,limit=1] run function expansion:vehicles/mech/actions/righthand/rocket/explode
execute unless block ~ ~ ~ #expansion:air run function expansion:vehicles/mech/actions/righthand/rocket/explode

particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force
particle flame ^ ^ ^-0.5 0 0 0 0.01 2 force
particle flame ^ ^ ^ 0 0 0 0.01 2 force
particle flame ^ ^ ^-1 0 0 0 0.01 2 force

scoreboard players remove @s exp.max_range 1

execute if score @s exp.max_range matches ..0 run function expansion:vehicles/mech/actions/righthand/rocket/explode
