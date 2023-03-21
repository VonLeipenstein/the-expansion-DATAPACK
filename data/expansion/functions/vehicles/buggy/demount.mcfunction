execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~1 ~ loot expansion:vehicles/buggy

execute on passengers run data modify entity @s item.tag.CustomModelData set value 1012008
execute on passengers store result entity @s item.tag.fuel_lvl int 1 on vehicle run scoreboard players get @s exp.fuel_level

execute on passengers run data modify entity @e[type=item,nbt={Item:{tag:{moon_buggy:1b}}},limit=1,sort=nearest] Item set from entity @s item

playsound block.metal.break block @a ~ ~ ~

execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s


