scoreboard players reset @s exp.random
execute store result score @s exp.random run random value 0..1
tag @p[distance=..50] add exp.mech_target


# switch weapons based on the playter distance and randomness
#execute if score @s exp.random matches 0 if entity @p[tag=exp.mech_target,distance=..5] run function expansion:vehicles/mech/actions/righthand/equip/hand
execute if score @s exp.random matches 0..1 if entity @p[tag=exp.mech_target,distance=..5] run function expansion:vehicles/mech/actions/righthand/equip/sword
execute if score @s exp.random matches 0 if entity @p[tag=exp.mech_target,distance=5..] run function expansion:vehicles/mech/actions/righthand/equip/blaster
execute if score @s exp.random matches 1 if entity @p[tag=exp.mech_target,distance=5..] run function expansion:vehicles/mech/actions/righthand/equip/rocket

scoreboard players set @s exp.mech_right_cooldown 20

tag @s add exp.equipped_weapon_right
tag @p[tag=exp.mech_target] remove exp.mech_target