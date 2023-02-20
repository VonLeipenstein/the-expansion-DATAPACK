tp @s ~ ~ ~ ~10 ~
particle minecraft:totem_of_undying ^ ^5 ^0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^ ^5 ^-0.7 ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^0.7 ^5 ^ ^ ^ ^ 0 0
particle minecraft:totem_of_undying ^-0.7 ^5 ^ ^ ^ ^ 0 0

execute as @p if entity @s[distance=..0.2,tag=!exp.tp_rev_prev] unless score @s exp.cooldown matches 1.. as @e[type=armor_stand,tag=exp.position_new,limit=1,sort=nearest] run function expansion:items/transporter/initiate_return
tag @p[distance=1..,tag=exp.tp_rev_prev] remove exp.tp_rev_prev