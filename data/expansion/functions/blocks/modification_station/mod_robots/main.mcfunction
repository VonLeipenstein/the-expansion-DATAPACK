execute if score @e[type=armor_stand,tag=exp.modstation,limit=1,sort=nearest] exp.timer_1 matches 1.. at @s run function expansion:blocks/modification_station/mod_robots/swarm_ship
execute if score @e[type=armor_stand,tag=exp.modstation,limit=1,sort=nearest] exp.timer_1 matches 0 at @s run function expansion:blocks/modification_station/mod_robots/return_to_block