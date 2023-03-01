tag @s add exp.done_modifying

execute as @e[type=armor_stand,tag=exp.being_modified,distance=..50,limit=1,sort=nearest] on passengers run function expansion:blocks/modification_station/apply_mods/apply_upgrade

tag @s remove exp.done_modifying
tag @s remove exp.modifying_ship
tag @e[type=armor_stand,tag=exp.being_modified,distance=..50,limit=1,sort=nearest] remove exp.being_modified
