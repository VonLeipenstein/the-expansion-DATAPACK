# mohe towards vehicle
execute if score @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] exp.timer_1 matches 1.. at @s run function expansion:blocks/modification_station/mod_robots/swarm_vehicle

# home towards their modstation
execute if score @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] exp.timer_1 matches 0 at @s run function expansion:blocks/modification_station/mod_robots/return_to_block