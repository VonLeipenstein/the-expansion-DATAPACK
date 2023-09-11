data modify entity @s Pos set from entity @p[tag=exp.spaceship_pilot] Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.asteroids

execute at @s in expansion:asteroids run tp @a[tag=exp.transition_temp] ~ 450 ~ ~ 89

kill @s