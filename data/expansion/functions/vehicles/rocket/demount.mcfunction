loot spawn ~ ~ ~ loot expansion:vehicles/rocket

execute on passengers run data modify entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] Item.tag.CustomModelData set from entity @s item.tag.CustomModelData
execute store result entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] Item.tag.fuel_lvl int 1 run scoreboard players get @s exp.fuel_level

playsound expansion:wrench.create block @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @e[type=interaction,tag=exp.rocket_interactor,limit=2,sort=nearest]
kill @s