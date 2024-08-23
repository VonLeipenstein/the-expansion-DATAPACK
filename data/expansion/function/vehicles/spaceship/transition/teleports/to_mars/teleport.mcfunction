data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].components.minecraft:custom_data.Inventory[].spaceship_store[].components.minecraft:custom_data.ReturnPos.mars

execute at @s as @a[tag=exp.transition_temp] in expansion:mars run tp @s ~ 450 ~ ~ 89

kill @s