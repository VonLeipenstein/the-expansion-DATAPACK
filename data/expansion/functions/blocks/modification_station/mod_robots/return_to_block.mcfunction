execute at @s anchored eyes facing entity @e[type=armor_stand,tag=exp.modstation,limit=1,sort=nearest] eyes positioned ^ ^1 ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~

execute at @s if entity @e[type=armor_stand,tag=exp.modstation,distance=..0.5,limit=1,sort=nearest] run kill @s