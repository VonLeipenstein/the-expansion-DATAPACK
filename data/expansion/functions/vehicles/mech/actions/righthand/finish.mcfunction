tag @s remove exp.mech.action.right
tag @s remove exp.mech.action.right.stop

execute unless score @s exp.mech_right_dur matches ..-1 run scoreboard players set @s exp.mech_right_dur 0