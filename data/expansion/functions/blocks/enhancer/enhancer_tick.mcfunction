execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/enhancer/destroy
execute if entity @p[distance=..5] run function expansion:blocks/enhancer/player_nearby
execute as @e[type=minecraft:armor_stand,tag=exp.enhancer_display,distance=..0.1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~2 ~