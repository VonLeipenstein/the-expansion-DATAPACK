execute if score @s exp.mech_right_id matches 0 run function expansion:vehicles/mech/actions/righthand/punch/main
execute if score @s exp.mech_right_id matches 1 run function expansion:vehicles/mech/actions/righthand/swing/main
execute if score @s exp.mech_right_id matches 2 run function expansion:vehicles/mech/actions/righthand/shoot/main
execute if score @s exp.mech_right_id matches 3 run function expansion:vehicles/mech/actions/righthand/drill/main

execute if score @s exp.cooldown matches 1 run tag @s remove exp.mech.tick.right