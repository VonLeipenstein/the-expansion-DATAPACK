data modify entity @s Pos set from entity @p Inventory[{Slot:103b}].tag.Inventory[].spaceship_store[].tag.ReturnPos.moon

execute at @s in expansion:moon run tp @p[tag=exp.tp_to_marker] ~ 450 ~ ~ 89

kill @s