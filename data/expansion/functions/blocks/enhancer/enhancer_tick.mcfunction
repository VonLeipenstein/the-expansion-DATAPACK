execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/enhancer/destroy
execute if entity @p[distance=..5] run function expansion:blocks/enhancer/interaction
execute as @e[type=armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~2 ~