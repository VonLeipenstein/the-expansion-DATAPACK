# remove spaceship upgrades
execute unless score @s[tag=exp.modding_ship] exp.counter_1 matches ..4 as @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] on passengers if entity @s[type=minecraft:item_display,tag=exp.spaceship_display] run function expansion:blocks/modification_station/spaceship/remove_mods/initiate

# initiate modding the mech
execute unless score @s[tag=exp.modding_mech] exp.counter_1 matches ..4 as @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] run function expansion:blocks/modification_station/mech/remove_mods/initiate


