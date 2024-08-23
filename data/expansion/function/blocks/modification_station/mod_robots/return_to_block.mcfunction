# home the robots towards their home mod station
execute anchored eyes facing entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,scores={exp.counter_1=..4},limit=1,sort=nearest] feet positioned ^ ^1 ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# delete the robots if they are close to the modstation
execute if entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,distance=..0.5,scores={exp.counter_1=..4},limit=1,sort=nearest] run function expansion:blocks/modification_station/mod_robots/delete
