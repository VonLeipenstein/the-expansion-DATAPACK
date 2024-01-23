tag @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] add exp.being_modified
tag @s add exp.modifying_vehicle

# store any upgrades inside the armor stands head item and check if there is any, don't overwrite existing upgrades
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{hand_mod:1b},Count:1b}]} unless data entity @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] ArmorItems[3].tag.ModStorage.lefthand.id store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.lefthand set from block ~ ~ ~ Items[{Slot:9b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{hand_mod:1b},Count:1b}]} unless data entity @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] ArmorItems[3].tag.ModStorage.righthand.id store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.righthand set from block ~ ~ ~ Items[{Slot:14b}]

# only start the upgrade when there is at least 1 upgrade present
execute if score @s exp.bool matches 1.. run function expansion:blocks/modification_station/mech/apply_mods/start_upgrade