execute if score @s exp.mech_left_dur matches 1 run function expansion:vehicles/mech/actions/lefthand/swing/init
execute if score @s exp.mech_left_dur matches 12 run tag @s add exp.mech.action.left.stop

execute if score @s exp.mech_left_dur matches 8..10 on passengers if entity @s[tag=aj.mech_torso.root] rotated as @s positioned ^ ^ ^3 as @e[type=!#expansion:ignore,distance=..2.5] run damage @s 12
