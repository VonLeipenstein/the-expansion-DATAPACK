# apply different speeds and precisions depending on the distance from the desired floating point
execute if entity @s[distance=10..] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if entity @s[distance=7..10] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~
execute if entity @s[distance=5..7] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~
execute if entity @s[distance=3..5] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[distance=..3] anchored eyes rotated ~ 0 facing ^ ^ ^ rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.05 ~ ~

# apply a random chance to turn a bit to make some random behavior
execute at @s if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~5 ~
execute at @s if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~-1 ~
execute at @s if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~ ~5
execute at @s if predicate expansion:chance/020_chance run tp @s ~ ~ ~ ~ ~-1