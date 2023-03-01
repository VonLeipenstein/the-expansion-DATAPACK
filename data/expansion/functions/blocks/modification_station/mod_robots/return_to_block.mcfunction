execute anchored eyes facing entity @e[type=armor_stand,tag=exp.modstation,scores={exp.counter_1=..4},limit=1,sort=nearest] eyes positioned ^ ^1 ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~

execute if entity @e[type=armor_stand,tag=exp.modstation,distance=..0.5,scores={exp.counter_1=..4},limit=1,sort=nearest] run function expansion:blocks/modification_station/mod_robots/delete
