tag @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] add exp.being_modified
tag @s add exp.modifying_vehicle

scoreboard players reset @s exp.bool
execute if entity @s[tag=exp.modding_ship] run function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/initiate
execute if entity @s[tag=exp.modding_mech] run function expansion:blocks/modification_station/upgrade/mech/apply_mods/initiate
execute if entity @s[tag=exp.modding_buggy] run function expansion:blocks/modification_station/upgrade/buggy/apply_mods/initiate

# only start the upgrade when there is at least valid 1 upgrade present
execute if score @s exp.bool matches 1.. run function expansion:blocks/modification_station/upgrade/init

function expansion:utilities/sounds/button