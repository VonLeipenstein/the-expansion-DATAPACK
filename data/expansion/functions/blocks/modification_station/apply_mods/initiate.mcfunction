tag @e[type=armor_stand,tag=exp.mod_ship,distance=..50,limit=1,sort=nearest] add exp.being_modified
tag @s add exp.modifying_ship

# store any upgrades inside the armor stands head item and check if there is any
execute if block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{fuel_mod:1b}}]} store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.fuel set from block ~ ~ ~ Items[{Slot:0b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{blaster_mod:1b}}]} store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.blaster set from block ~ ~ ~ Items[{Slot:9b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{speed_mod:1b}}]} store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.speed set from block ~ ~ ~ Items[{Slot:18b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b}}]} store success score @s exp.bool run function expansion:blocks/modification_station/apply_mods/store_skin_cmd

# only start the upgrade when there is at least 1 upgrade present
execute if score @s exp.bool matches 1.. run function expansion:blocks/modification_station/apply_mods/start_upgrade