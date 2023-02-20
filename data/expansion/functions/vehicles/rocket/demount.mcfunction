execute store result entity @s ArmorItems[3].tag.fuel_lvl int 1 run scoreboard players get @s exp.fuel_level

loot spawn ~ ~ ~ loot expansion:vehicles/rocket

data modify entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] Item set from entity @s ArmorItems[3]

playsound expansion:wrench.create block @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
kill @e[type=interaction,tag=exp.rocket_interactor,limit=3,sort=nearest]
kill @s