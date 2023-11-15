execute as @p unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/rocket

execute store result entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] Item.tag.fuel_lvl int 1 run scoreboard players get @s exp.fuel_level
data merge entity @e[type=item,nbt={Item:{tag:{exp_rocket:1b}}},limit=1,sort=nearest] {PickupDelay:0s}

playsound block.metal.break block @a ~ ~ ~

execute at @s positioned ~ ~2 ~ run kill @e[type=minecraft:interaction,tag=exp.rocket_interactor,tag=exp.launch_button,limit=1,sort=nearest]
execute at @s positioned ~ ~2 ~ run kill @e[type=minecraft:interaction,tag=exp.rocket_interactor,tag=exp.fuel_button,limit=1,sort=nearest]

function expansion:vehicles/rocket/destroy