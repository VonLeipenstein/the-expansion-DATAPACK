execute if score @s exp.mech_left_id matches 0 if score @s exp.mech_left_id matches 0 run function expansion:vehicles/mech/actions/combo/hands/main
execute if score @s exp.mech_left_id matches 1 if score @s exp.mech_left_id matches 1 run function expansion:vehicles/mech/actions/combo/swords/main
execute if score @s exp.mech_left_id matches 2 if score @s exp.mech_left_id matches 2 run function expansion:vehicles/mech/actions/combo/blasters/main
execute if score @s exp.mech_left_id matches 3 if score @s exp.mech_left_id matches 3 run function expansion:vehicles/mech/actions/combo/drills/main

execute if score @s exp.cooldown matches 1 run tag @s remove exp.mech.tick.combo