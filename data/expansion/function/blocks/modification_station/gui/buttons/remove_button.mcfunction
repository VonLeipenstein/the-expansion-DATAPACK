# remove spaceship upgrades
execute unless score @s[tag=exp.modding_ship] exp.counter_1 matches ..4 as @n[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50] on passengers if entity @s[type=minecraft:item_display,tag=exp.spaceship_display] run function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate

# initiate modding the mech
execute unless score @s[tag=exp.modding_mech] exp.counter_1 matches ..4 as @n[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50] run function expansion:blocks/modification_station/upgrade/mech/remove_mods/initiate

# initiate modding the buggy
execute unless score @s[tag=exp.modding_buggy] exp.counter_1 matches ..4 as @n[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50] run function expansion:blocks/modification_station/upgrade/buggy/remove_mods/initiate

function expansion:utilities/sounds/button
