kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/modstation
kill @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest]
execute if entity @s[tag=exp.modifying_ship] run kill @e[type=minecraft:armor_stand,tag=exp.mod_drone,limit=5,sort=nearest]
execute if entity @s[tag=exp.modifying_ship] run tag @e[type=minecraft:armor_stand,tag=exp.being_modified,distance=..50,limit=1,sort=nearest] remove exp.being_modified
execute if entity @s[tag=exp.has_ship_selected] run tag @e[type=minecraft:armor_stand,tag=exp.mod_ship,distance=..50,limit=1,sort=nearest] remove exp.mod_ship
kill @s