# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/rotation/roll
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/rotation/get_euler_angles (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result score @s exp.roll on passengers if entity @s[tag=exp.player_rotation] run data get entity @s Rotation[0] 1000

# make sure the tilt angle is in the correct format
scoreboard players operation @s exp.roll -= @s exp.yaw

# don't calculate the rest if the difference is not great enough
execute if score @s exp.roll matches -10..10 run return 0

# calculate the roll otherwise
execute unless score @s exp.roll matches -180000..180000 run function expansion:vehicles/spaceship/propulsion/rotation/roll_correction
execute if score @s exp.roll matches 45000.. run scoreboard players set @s exp.roll 45000
execute if score @s exp.roll matches ..-45000 run scoreboard players set @s exp.roll -45000

# calculate the tilt
scoreboard players operation #temp exp.math = @s exp.pitch
scoreboard players operation #temp exp.math *= #100 exp.const
execute if score #temp exp.math matches ..-1 run scoreboard players operation #temp exp.math *= #-1 exp.const
scoreboard players operation #temp exp.math /= #-90000 exp.const
scoreboard players add #temp exp.math 100
scoreboard players operation @s exp.roll *= #temp exp.math

scoreboard players reset #temp exp.math

return run scoreboard players get @s exp.roll