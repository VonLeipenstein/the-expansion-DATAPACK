# get the unique score from this modstation, this is used tor the bots and the modded vehicle
scoreboard players operation #modstation exp.unique_id = @s exp.unique_id

# destroy the block when the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/modification_station/destroy

# runs when a player is within 5 blocks
execute if entity @p[distance=..5.5] run function expansion:blocks/modification_station/player_nearby

# deselect the vehicle if none is found
execute if entity @s[tag=exp.has_vehicle_selected] unless entity @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] run function expansion:blocks/modification_station/select_vehicle/deselect

# finish upgrading a vehicle
execute if entity @s[tag=exp.modifying_vehicle] if score @s exp.timer_1 matches 0 run function expansion:blocks/modification_station/finish_upgrade

# movement of the little bots
execute if score @s exp.counter_1 matches ..4 as @e[type=minecraft:armor_stand,tag=exp.mod_drone,predicate=expansion:compare_score/modstation,limit=5,sort=nearest] run function expansion:blocks/modification_station/mod_robots/main

# timer for upgrade
scoreboard players remove @s[scores={exp.timer_1=1..}] exp.timer_1 1