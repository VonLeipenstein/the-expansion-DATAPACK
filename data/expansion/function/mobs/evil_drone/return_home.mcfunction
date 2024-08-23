execute anchored eyes facing entity @e[type=minecraft:armor_stand,tag=exp.drone_home,limit=1,sort=nearest] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^.3 ~ ~

execute unless block ^ ^ ^1 #expansion:air run tag @s remove exp.home_too_far
execute if entity @e[type=minecraft:armor_stand,tag=exp.drone_home,distance=..10,limit=1,sort=nearest] run tag @s remove exp.home_too_far