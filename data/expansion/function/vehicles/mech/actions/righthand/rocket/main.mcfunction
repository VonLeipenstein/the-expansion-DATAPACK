execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/rocket/init
execute if score @s exp.mech_right_dur matches 20 run tag @s add exp.mech.action.right.stop

execute if score @s exp.mech_right_dur matches 15 store result score #temp exp.unique_id run data get entity @s ArmorItems[3].components.minecraft:custom_data.rocket_right_target
execute if score @s exp.mech_right_dur matches 15 run function expansion:vehicles/mech/actions/righthand/rocket/launch