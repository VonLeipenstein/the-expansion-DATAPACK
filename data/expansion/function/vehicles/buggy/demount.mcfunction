execute store result entity @s ArmorItems[0].components.minecraft:custom_data.ModStorage.oxygen_tank.oxygen_lvl int 1 run scoreboard players get @s exp.oxygen_lvl

execute as @p unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/buggy

# copy the buggys item data from the armor stands feet item where it was stored on entering
data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{moon_buggy:1b}}}}] Item set from entity @s ArmorItems[0]
data merge entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moon_buggy:1b}}}},limit=1,sort=nearest] {PickupDelay:0s}

playsound block.metal.break block @a ~ ~ ~

execute on passengers if entity @s[tag=aj.buggy.root] run function animated_java:buggy/remove/this
execute on passengers run kill @s[type=!player]
kill @s
