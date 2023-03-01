execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/modification_station/destroy

execute if entity @p[distance=..5.5] run function expansion:blocks/modification_station/player_nearby

execute if entity @s[tag=exp.has_ship_selected] unless entity @e[type=armor_stand,tag=exp.mod_ship,distance=..50,limit=1,sort=nearest] run function expansion:blocks/modification_station/ship_selection/deselect_ship

execute if entity @s[tag=exp.modifying_ship] if score @s exp.timer_1 matches 0 run function expansion:blocks/modification_station/apply_mods/finish_upgrade

execute if score @s exp.counter_1 matches ..4 as @e[type=armor_stand,tag=exp.mod_drone,limit=5,sort=nearest] run function expansion:blocks/modification_station/mod_robots/main

scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1