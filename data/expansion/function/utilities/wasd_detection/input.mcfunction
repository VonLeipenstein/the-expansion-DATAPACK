scoreboard players set .w exp.wasd 0
scoreboard players set .a exp.wasd 0
scoreboard players set .s exp.wasd 0
scoreboard players set .d exp.wasd 0
scoreboard players set .dir exp.wasd 0
execute if score .z exp.wasd matches 0 if score .x exp.wasd matches 0 run scoreboard players set .dir exp.wasd -999
execute unless score .dir exp.wasd matches -999 run function expansion:utilities/wasd_detection/calc_range