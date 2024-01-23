execute if entity @s[tag=exp.modding_ship] as @e[type=minecraft:armor_stand,tag=exp.being_modified,predicate=expansion:compare_score/modstation,distance=..50,limit=1] on passengers if entity @s[tag=exp.spaceship_display] run function expansion:blocks/modification_station/spaceship/apply_mods/apply_upgrade

execute if entity @s[tag=exp.modding_mech] as @e[type=minecraft:armor_stand,tag=exp.being_modified,predicate=expansion:compare_score/modstation,distance=..50,limit=1] run function expansion:blocks/modification_station/mech/apply_mods/apply_upgrade

data remove entity @s ArmorItems[3].tag.ModStorage

tag @s remove exp.modifying_vehicle