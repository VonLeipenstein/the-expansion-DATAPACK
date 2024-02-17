# apply different speeds and precisions depending on the distance from the desired floating point
execute unless entity @p[distance=..7] anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.28 ~ ~
execute if entity @p[distance=..7] anchored eyes facing entity @p feet positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^8 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run function expansion:mobs/evil_drone/ranged_drone/evade_player

scoreboard players add @s exp.timer_1 1
execute if score @s exp.timer_1 matches 60.. if block ^ ^ ^1 #expansion:air run function expansion:mobs/evil_drone/ranged_drone/fire