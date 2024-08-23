kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/modstation

execute on passengers run kill @s

execute if entity @s[tag=exp.modifying_vehicle] run kill @e[type=minecraft:armor_stand,predicate=expansion:compare_score/modstation,tag=exp.mod_drone,limit=5,sort=nearest]
execute if entity @s[tag=exp.modifying_vehicle] run tag @e[type=minecraft:armor_stand,tag=exp.being_modified,predicate=expansion:compare_score/modstation,distance=..50,limit=1] remove exp.being_modified

execute if entity @s[tag=exp.has_vehicle_selected] run tag @e[type=minecraft:armor_stand,tag=exp.mod_vehicle,predicate=expansion:compare_score/modstation,distance=..50,limit=1] remove exp.mod_vehicle

kill @s
 