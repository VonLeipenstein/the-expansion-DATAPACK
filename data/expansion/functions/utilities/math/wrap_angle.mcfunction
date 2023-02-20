#"in" is an angle in degrees; "out" is an equivalent angle in the range -180..180

execute unless score #input exp.math matches 0.. run scoreboard players operation #input exp.math *= #-1 exp.const


execute unless score @s exp.math matches ..180 run scoreboard players remove @s exp.math 360
execute unless score @s exp.math matches -180..180 run function expansion:utilities/math/wrap_angle
execute if score @s exp.math matches -180..180 run scoreboard players operation #output exp.math = @s exp.math