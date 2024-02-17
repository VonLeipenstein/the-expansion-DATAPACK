execute if score @s exp.mech_right_dur matches 1 run function expansion:vehicles/mech/actions/righthand/swing/init
execute if score @s exp.mech_right_dur matches 20 run tag @s add exp.mech.action.right.stop

execute if score @s exp.mech_right_dur matches 8..10 on passengers if entity @s[tag=aj.mech_torso.root] rotated as @s positioned ^ ^ ^3 as @e[type=!#expansion:ignore,distance=..2.5] run damage @s 12
