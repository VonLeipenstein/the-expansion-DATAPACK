kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},limit=1,sort=nearest]
execute if entity @s[tag=exp.scanning] unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/fail
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/oxygenator
kill @e[type=minecraft:armor_stand,tag=exp.sphere_display,limit=1,sort=nearest]
kill @s