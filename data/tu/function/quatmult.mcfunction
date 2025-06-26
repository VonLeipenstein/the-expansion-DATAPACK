#> Calculate the product of two quaternions

# input handling
data modify storage tu:io out set value [0f,0f,0f,0f]
$data modify storage tu:data p set value [$(quat1),$(quat2)]
execute store result score $qx1 tu.math run data get storage tu:data p[0][0] 10000
execute store result score $qy1 tu.math run data get storage tu:data p[0][1] 10000
execute store result score $qz1 tu.math run data get storage tu:data p[0][2] 10000
execute store result score $qw1 tu.math run data get storage tu:data p[0][3] 10000
execute store result score $qx2 tu.math run data get storage tu:data p[1][0] 10000
execute store result score $qy2 tu.math run data get storage tu:data p[1][1] 10000
execute store result score $qz2 tu.math run data get storage tu:data p[1][2] 10000
execute store result score $qw2 tu.math run data get storage tu:data p[1][3] 10000

# convert euler angles to quaternion
function tu:internal/quatmult

# store values
execute store result storage tu:io out[0] float 0.00000001 run scoreboard players get $qx' tu.math
execute store result storage tu:io out[1] float 0.00000001 run scoreboard players get $qy' tu.math
execute store result storage tu:io out[2] float 0.00000001 run scoreboard players get $qz' tu.math
execute store result storage tu:io out[3] float 0.00000001 run scoreboard players get $qw' tu.math