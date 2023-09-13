data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.jupiter

execute at @s as @a[tag=exp.transition_temp,distance=..5,limit=2,sort=nearest] in expansion:jupiter run tp @s ~ 450 ~ ~ 89

kill @s