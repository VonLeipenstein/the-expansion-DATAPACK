data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.mercury

execute at @s in expansion:mercury run tp @a[tag=exp.transition_temp] ~ 450 ~ ~ 89

kill @s