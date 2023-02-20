## debouncing rotation
scoreboard players operation .ry exp.wasd = @s exp.wasd
execute store result score @s exp.wasd run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation in exp.math = .z exp.wasd
scoreboard players operation in1 exp.math = .x exp.wasd
function expansion:utilities/math/atan2
scoreboard players operation .dir exp.wasd = out exp.math
scoreboard players operation .dir exp.wasd += .ry exp.wasd

## Map angle to the range 0..360
scoreboard players operation .dir exp.wasd %= #360 exp.const

## WASD based on dir angle ranges
execute if score .dir exp.wasd matches 23..157 run scoreboard players set .a exp.wasd 1
execute if score .dir exp.wasd matches 112..248 run scoreboard players set .s exp.wasd 1
execute if score .dir exp.wasd matches 203..337 run scoreboard players set .d exp.wasd 1
execute if score .dir exp.wasd matches 293..360 run scoreboard players set .w exp.wasd 1
execute if score .dir exp.wasd matches 0..67 run scoreboard players set .w exp.wasd 1
