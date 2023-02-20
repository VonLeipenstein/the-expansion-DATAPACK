execute store result entity @s ArmorItems[3].tag.fuel_lvl int 1 run scoreboard players get @s exp.fuel_level
data modify entity @s ArmorItems[3].tag.CustomModelData set value 1012008

loot spawn ~ ~ ~ loot expansion:vehicles/buggy

data modify entity @e[type=item,nbt={Item:{tag:{moon_buggy:1b}}},limit=1,sort=nearest] Item set from entity @s ArmorItems[3]

playsound expansion:wrench.create player @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
kill @e[type=interaction,tag=exp.buggy_rcdet,distance=..5,limit=1,sort=nearest]
kill @s


