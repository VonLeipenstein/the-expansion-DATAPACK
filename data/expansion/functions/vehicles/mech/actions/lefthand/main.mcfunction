execute if score @s exp.mech_left_id matches 0 run function expansion:vehicles/mech/actions/lefthand/punch/main
execute if score @s exp.mech_left_id matches 1 run function expansion:vehicles/mech/actions/lefthand/swing/main
execute if score @s exp.mech_left_id matches 2 run function expansion:vehicles/mech/actions/lefthand/shoot/main
execute if score @s exp.mech_left_id matches 3 run function expansion:vehicles/mech/actions/lefthand/drill/main

execute if score @s exp.cooldown matches 1 run tag @s remove exp.mech.tick.left