kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_item:1b}}}},distance=..1]
execute if entity @s[tag=exp.scanning] unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/oxygenate/fail
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/oxygenator
kill @e[type=minecraft:armor_stand,tag=exp.sphere_display,limit=1,sort=nearest]
kill @s
 