execute if score @s exp.counter_1 matches 0 run tag @e[type=minecraft:armor_stand,tag=exp.compressor,tag=exp.has_oxygen,distance=..40] remove exp.has_oxygen
execute if score @s exp.counter_1 matches 1 positioned ~-24 ~-24 ~-24 run tag @e[type=minecraft:armor_stand,tag=exp.compressor,tag=exp.has_oxygen,dx=47,dy=47,dz=47] remove exp.has_oxygen

kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]
kill @e[type=minecraft:experience_orb,distance=..5]
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=minecraft:armor_stand,tag=exp.terraformer,limit=1,sort=nearest,distance=..1]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/terraformer
kill @s
 