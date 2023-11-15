tp @s ~ ~ ~ ~10 ~
particle minecraft:totem_of_undying ^ ^5 ^0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^ ^5 ^-0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^0.7 ^5 ^ ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^-0.7 ^5 ^ ^ ^ ^ 0 0

execute unless score @p[distance=..0.2,tag=!exp.tp_rev_prev] exp.cooldown matches 1.. run function expansion:items/transporter/initiate_return
tag @p[distance=1..,tag=exp.tp_rev_prev] remove exp.tp_rev_prev