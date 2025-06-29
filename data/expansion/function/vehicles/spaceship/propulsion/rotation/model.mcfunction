execute store result score @s exp.pitch on vehicle run scoreboard players get @s exp.pitch
execute store result score @s exp.yaw on vehicle run scoreboard players get @s exp.yaw
execute store result score @s exp.roll on vehicle run scoreboard players get @s exp.roll

# Initialize
data modify storage expansion:rotation in.rotation set value [0f,0f,0f]
data modify storage expansion:rotation transformation set from entity @s transformation

# make sure y rotation of the model is always horizontal, this is done with the quaternion
execute unless entity @s[y_rotation=-1..1] rotated as @s run rotate @s ~ 0

# calculate
execute store result storage expansion:rotation in.rotation[0] float 0.001 run scoreboard players get @s exp.pitch
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s exp.yaw
execute store result storage expansion:rotation in.rotation[2] float 0.00001 run scoreboard players get @s exp.roll
function tu:eul2quat with storage expansion:rotation in

# First step: translate center of block display to origin
data modify storage expansion:rotation transformation.first_translation set value [0.0f,-0.9f,0.0f]

# Second step: rotate block display
data modify storage expansion:rotation transformation.left_rotation set from storage tu:io out

# Third step: translate block display back to original position
data modify storage expansion:rotation transformation.translation set value [0.0f,0.9f,0.0f]

# Calculate transformation
function tu:transform with storage expansion:rotation transformation

# merge transformation with entity
data modify entity @s transformation set from storage tu:io out