execute as @p unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/rocket

execute store result entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] Item.tag.fuel_lvl int 1 on vehicle on vehicle run scoreboard players get @s exp.fuel_level
data merge entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] {PickupDelay:0s}

playsound block.metal.break block @a ~ ~ ~
execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s
execute positioned ~ ~3 ~ run kill @e[type=minecraft:interaction,tag=exp.rocket_interactor,limit=2,sort=nearest]
kill @s