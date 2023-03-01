# store the fuel level inside the spaceship item
execute on passengers store result entity @s item.tag.fuel_lvl int 1 run execute on vehicle run scoreboard players get @s exp.fuel_level

# substract one from the spaceship custom model data so it changes to the flying version
execute on passengers run function expansion:vehicles/spaceship/model_switching/decrease_model_alt

# spawn the placeholder item and copy all the spaceship data to it
loot spawn ~ ~ ~ loot expansion:vehicles/spaceship
execute on passengers run data modify entity @e[type=item,nbt={Item:{tag:{exp_spaceship:1b}}},limit=1,sort=nearest] Item set from entity @s item

# cosmetics
playsound expansion:wrench.create block @a ~ ~ ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s