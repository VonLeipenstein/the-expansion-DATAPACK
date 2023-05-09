# remove from the turn angle
scoreboard players remove #turn exp.math 4
# make sure the angle can't go out of bounds
execute if score #turn exp.math matches ..-180 run scoreboard players add #turn exp.math 360