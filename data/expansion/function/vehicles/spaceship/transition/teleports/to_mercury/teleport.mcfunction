data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].components.minecraft:custom_data.Inventory[].spaceship_store[].components.minecraft:custom_data.ReturnPos.mercury

execute at @s as @a[tag=exp.transition_temp] in expansion:mercury run tp @s ~ 450 ~ ~ 89

kill @s