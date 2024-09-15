# summon the item
execute as @p unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/rocket

# store the fuel level inside the item
execute store result entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_rocket:1b}}}},limit=1,sort=nearest] Item.components.minecraft:custom_data.fuel_lvl int 1 run scoreboard players get @s exp.fuel_level

# remove the pickupdelay
data merge entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_rocket:1b}}}},limit=1,sort=nearest] {PickupDelay:0s}

# sound
playsound block.metal.break block @a ~ ~ ~

# remove the entity stack
function expansion:vehicles/rocket/destroy