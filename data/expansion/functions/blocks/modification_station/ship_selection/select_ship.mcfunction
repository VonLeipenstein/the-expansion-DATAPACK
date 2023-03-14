tag @e[type=minecraft:armor_stand,tag=exp.modstation,limit=1,sort=nearest] add exp.has_ship_selected
tag @s add exp.mod_ship

item replace entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] container.0 from entity @e[type=minecraft:item_display,tag=exp.spaceship_display,predicate=expansion:nbt_checks/root_vehicle/spaceship_mod_ship,distance=..50,limit=1,sort=nearest] container.0