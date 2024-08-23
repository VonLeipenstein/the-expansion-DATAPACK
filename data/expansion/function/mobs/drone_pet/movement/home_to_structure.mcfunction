# apply different speeds and precisions depending on the distance from the desired floating point
execute if block ^ ^ ^1.1 #expansion:air if entity @p[distance=30..40] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.05 ~ ~
execute if block ^ ^ ^1.1 #expansion:air if entity @p[distance=10..30] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute if block ^ ^ ^1.1 #expansion:air if entity @p[distance=0..10] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~

execute if entity @p[distance=40..] run function expansion:mobs/drone_pet/movement/too_far

execute unless block ^ ^ ^1.1 #expansion:air run function expansion:mobs/drone_pet/movement/blocked

