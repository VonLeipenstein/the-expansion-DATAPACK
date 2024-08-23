scoreboard players operation @s exp.mech_left_id = #temp exp.mech_left_id
scoreboard players operation @s exp.mech_right_id = #temp exp.mech_right_id

execute unless score @s exp.mech_left_id matches 1.. run function expansion:vehicles/mech/actions/lefthand/equip/hand
execute if score @s exp.mech_left_id matches 1 run function expansion:vehicles/mech/actions/lefthand/equip/sword
execute if score @s exp.mech_left_id matches 2 run function expansion:vehicles/mech/actions/lefthand/equip/blaster
execute if score @s exp.mech_left_id matches 3 run function expansion:vehicles/mech/actions/lefthand/equip/rocket
execute if score @s exp.mech_left_id matches 4 run function expansion:vehicles/mech/actions/lefthand/equip/drill

execute unless score @s exp.mech_right_id matches 1.. run function expansion:vehicles/mech/actions/righthand/equip/hand
execute if score @s exp.mech_right_id matches 1 run function expansion:vehicles/mech/actions/righthand/equip/sword
execute if score @s exp.mech_right_id matches 2 run function expansion:vehicles/mech/actions/righthand/equip/blaster
execute if score @s exp.mech_right_id matches 3 run function expansion:vehicles/mech/actions/righthand/equip/rocket
execute if score @s exp.mech_right_id matches 4 run function expansion:vehicles/mech/actions/righthand/equip/drill