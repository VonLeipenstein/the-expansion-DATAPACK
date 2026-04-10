# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/find_motion_angle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/move (1 caller) [OK same-folder]
# <<< generated function callers <<<

# store rotation data and assign it to a scoreboard value
execute store result score #angle exp.math run data get entity @s Rotation[0] 1

# add the offset determined by the controls
scoreboard players operation #angle exp.math += @s exp.yaw

# make sure the angle is always between -180..180
execute if score #angle exp.math matches 180.. run scoreboard players remove #angle exp.math 360
execute if score #angle exp.math matches ..-180 run scoreboard players add #angle exp.math 360
scoreboard players operation #input exp.math = #angle exp.math

# the sin approximation algorithm only works for angles between 0 and 180 so make any negative angles positive
# revert this later in the move function
execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const