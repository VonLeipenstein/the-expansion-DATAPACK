tag @s remove exp.mech.action.left
tag @s remove exp.mech.action.left.stop

execute unless score @s exp.mech_left_dur matches ..-1 run scoreboard players set @s exp.mech_left_dur 0