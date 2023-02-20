data modify storage exp.wasd Motion set from entity @s Motion
execute store result score .x exp.wasd run data get storage exp.wasd Motion[0] 1000.0
execute store result score .z exp.wasd run data get storage exp.wasd Motion[2] 1000.0
function expansion:utilities/wasd_detection/input