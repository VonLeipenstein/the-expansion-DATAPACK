# store the fuel cell inside the spaceship item
#execute on passengers if entity @s[tag=exp.fuel_slot] run function expansion:vehicles/spaceship/fuel/update_cell
#execute on passengers if entity @s[tag=exp.fuel_slot] run data modify storage expansion:temp fuel_cell set from entity @s item
#execute on passengers if entity @s[tag=exp.spaceship_display] run data modify entity @s item.components."minecraft:custom_data".fuel_cell set from storage expansion:temp fuel_cell

# substract one from the spaceship custom model data so it changes to the flying version
#execute on passengers if entity @s[tag=exp.spaceship_display] run data remove entity @s item.components.minecraft:custom_model_data.strings[1]

# spawn the placeholder item and copy all the spaceship data to it
#execute as @p[tag=exp.clicked_ship] unless entity @s[gamemode=creative] at @s run loot spawn ~ ~ ~ loot expansion:vehicles/spaceship
#execute on passengers if entity @s[tag=exp.spaceship_display] at @p[tag=exp.clicked_ship,gamemode=!creative,gamemode=!spectator] run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"spaceship"}}}}},distance=..0.01] Item set from entity @s item
#execute at @p[tag=exp.clicked_ship,gamemode=!creative,gamemode=!spectator] run data merge entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{exp_item:{name:"spaceship"}}}}},distance=..0.01] {PickupDelay:0s}

# sound
playsound block.metal.break block @a[distance=..5] ~ ~ ~

# delete entity stack
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s
