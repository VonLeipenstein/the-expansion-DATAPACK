# executed as the pocket space armor stand but at the location of the player
execute at @s run playsound block.metal.break block @a[distance=..16] ~ ~ ~

execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace barrier

loot spawn ~ ~ ~ loot expansion:tools/pocket_space

execute at @s run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"pocket_space"}}}}}] Item set from entity @s item

data merge entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"pocket_space"}}}}}] {PickupDelay:0s}

execute on passengers run kill @s

kill @s