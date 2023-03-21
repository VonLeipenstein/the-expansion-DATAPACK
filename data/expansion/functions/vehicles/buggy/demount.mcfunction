execute as @p if entity @s[gamemode=!creative] run loot give @s loot expansion:vehicles/buggy

execute on vehicle run data modify entity @s item.tag.CustomModelData set value 1012008
execute on vehicle run data modify entity @e[type=item,nbt={Item:{tag:{moon_buggy:1b}}},limit=1,sort=nearest] Item set from entity @s item

playsound block.metal.break block @a ~ ~ ~

execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s
kill @s


