tag @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,limit=1] add exp.being_modified
tag @s add exp.modifying_vehicle

# add a temporary tag to the ship display to make sure we select the correct ship
execute as @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,limit=1] on passengers run tag @s[type=item_display,tag=exp.spaceship_display] add exp.display_marker

# store any upgrades inside the armor stands head item and check if there is any
execute if block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{fuel_mod:1b},Count:1b}]} unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.tag.ModStorage.fuel.id store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.fuel set from block ~ ~ ~ Items[{Slot:0b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{blaster_mod:1b},Count:1b}]} unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.tag.ModStorage.blaster.id store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.blaster set from block ~ ~ ~ Items[{Slot:9b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{speed_mod:1b},Count:1b}]} unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.tag.ModStorage.speed.id store success score @s exp.bool run data modify entity @s ArmorItems[3].tag.ModStorage.speed set from block ~ ~ ~ Items[{Slot:18b}]
execute if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b},Count:1b}]} unless data entity @e[type=minecraft:item_display,tag=exp.display_marker,limit=1] item.tag.ModStorage.skin.id run function expansion:blocks/modification_station/spaceship/apply_mods/store_skin_cmd

# remove temporary tag
tag @e[type=item_display,tag=exp.display_marker] remove exp.display_marker

# only start the upgrade when there is at least 1 upgrade present
execute if score @s exp.bool matches 1.. run function expansion:blocks/modification_station/spaceship/apply_mods/start_upgrade