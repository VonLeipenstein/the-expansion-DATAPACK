data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.europa

execute at @s as @a[tag=exp.transition_temp] in expansion:europa run tp @s ~ 450 ~ ~ 89

kill @s