item replace entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] container.0 with minecraft:air

tag @s remove exp.has_ship_selected
tag @e[type=armor_stand,tag=exp.mod_ship,distance=..10,limit=1,sort=nearest] remove exp.mod_ship