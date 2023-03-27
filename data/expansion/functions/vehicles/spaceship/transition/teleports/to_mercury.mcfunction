data modify entity @s Pos set from entity @p Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.mercury

execute at @s in expansion:mercury run tp @p[tag=exp.tp_to_marker] ~ 450 ~ ~ 89

kill @s