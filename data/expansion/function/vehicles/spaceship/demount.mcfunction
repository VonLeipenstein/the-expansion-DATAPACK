# store the fuel level inside the spaceship item
execute on passengers if entity @s[type=item_display,tag=exp.spaceship_display] store result entity @s item.components.minecraft:custom_data.fuel_lvl int 1 on vehicle run scoreboard players get @s exp.fuel_level

# substract one from the spaceship custom model data so it changes to the flying version
execute on passengers if entity @s[type=item_display,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/decrease_model_alt

# spawn the placeholder item and copy all the spaceship data to it
execute as @p unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/spaceship

execute on passengers if entity @s[type=item_display,tag=exp.spaceship_display] run data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_spaceship:1b}}}},limit=1,sort=nearest] Item set from entity @s item

data merge entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_spaceship:1b}}}},limit=1,sort=nearest] {PickupDelay:0s}

# sound
playsound block.metal.break block @a[distance=..5] ~ ~ ~

# delete entity stack
execute on passengers run kill @s
kill @s
