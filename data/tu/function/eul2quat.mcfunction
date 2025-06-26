#> Convert rotation values around three principal axes into a rotation quaternion
# Rotation values x, y, z (in degrees) describe an intrinsic rotation in the order z (roll) → y (yaw) → x (pitch)
# This rotation order is the same used in armor stand Pose NBT rotations

# input handling
data modify storage tu:io out set value [0f,0f,0f,0f]
$data modify storage tu:data r set value $(rotation)

# get sin and cos of euler angles
# Sign for y and z rotations are flipped because Minecraft uses clockwise positive rotations on these axes for some reason
execute store result score $a tu.math run data get storage tu:data r[0] 50
function tu:internal/unit/main
scoreboard players operation $sin(a1) tu.math = $sin(a) tu.math
scoreboard players operation $cos(a1) tu.math = $cos(a) tu.math
execute store result score $a tu.math run data get storage tu:data r[1] 50
function tu:internal/unit/main
scoreboard players operation $sin(a2) tu.math = $sin(a) tu.math
scoreboard players operation $cos(a2) tu.math = $cos(a) tu.math
execute store result score $a tu.math run data get storage tu:data r[2] 50
function tu:internal/unit/main
scoreboard players operation $sin(a3) tu.math = $sin(a) tu.math
scoreboard players operation $cos(a3) tu.math = $cos(a) tu.math

# convert euler angles to quaternion
function tu:internal/eul2quat

# store values
execute store result storage tu:io out[0] float 0.000000001 run scoreboard players get $qx tu.math
execute store result storage tu:io out[1] float 0.000000001 run scoreboard players get $qy tu.math
execute store result storage tu:io out[2] float 0.000000001 run scoreboard players get $qz tu.math
execute store result storage tu:io out[3] float 0.000000001 run scoreboard players get $qw tu.math