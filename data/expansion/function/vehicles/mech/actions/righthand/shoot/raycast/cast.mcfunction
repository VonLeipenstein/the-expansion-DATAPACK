tag @s add exp.gatling_bullet

execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^ ~ ~

particle flame ~ ~ ~ 0 0 0 0.01 1 force
particle minecraft:dust_plume ~ ~ ~ 0 0 0 0.01 1 force

execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~1 ~
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~1 ~
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~-1 ~
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~-1 ~
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~ ~1
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~ ~1
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~ ~-1
execute at @s if predicate expansion:chance/050_chance run tp @s ~ ~ ~ ~ ~-1

scoreboard players set @s exp.max_range 300

execute positioned as @s rotated as @s run function expansion:vehicles/mech/actions/righthand/shoot/raycast/loop

kill @s