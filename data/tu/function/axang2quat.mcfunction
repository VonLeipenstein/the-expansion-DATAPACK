#> Calculate quaternion from rotation angle about an axis

# input handling
data modify storage tu:io out set value [0f,0f,0f,0f]
$data modify storage tu:data r set value {axis:$(axis),angle:$(angle)}
execute store result score $qx tu.math run data get storage tu:data r.axis[0] 1000
execute store result score $qy tu.math run data get storage tu:data r.axis[1] 1000
execute store result score $qz tu.math run data get storage tu:data r.axis[2] 1000

# get sin and cos of euler angle a
execute store result score $a tu.math run data get storage tu:data r.angle 50
function tu:internal/unit/main

# convert axis angle to quaternion
# for euler angle a about axis [x, y, z], the quaternion [qw, qx, qy, qz] is:
# [qw = cos(a)  ,
#  qx = sin(a)*x,
#  qy = sin(a)*y,
#  qz = sin(a)*z]
# qw is already stored in cos(a)
scoreboard players operation $qx tu.math *= $sin(a) tu.math
scoreboard players operation $qy tu.math *= $sin(a) tu.math
scoreboard players operation $qz tu.math *= $sin(a) tu.math

# store values
execute store result storage tu:io out[0] float 0.000001 run scoreboard players get $qx tu.math
execute store result storage tu:io out[1] float 0.000001 run scoreboard players get $qy tu.math
execute store result storage tu:io out[2] float 0.000001 run scoreboard players get $qz tu.math
execute store result storage tu:io out[3] float 0.001 run scoreboard players get $cos(a) tu.math