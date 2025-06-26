#> rotate vector v = [x, y, z] into v' = [x', y' z'] using unit quaternion q = [qw, qx, qy, qz]
# input vector ($x, $y, $z) scaled by 1000 (1.000 ↦ 1000)
# input quaternion ($qw, $qx, $qy, $qz) scaled by 1000 (1.000 ↦ 1000)
# output vector ($x', $y', $z') scaled by 1000 (1.000 ↦ 1000)
# implementation adapted from https://gamedev.stackexchange.com/a/50545
# rotation of vector v = [x, y, z] into vector v' = [x', y', z'] by the unit quaternion q = [qw, u] where u = [qx, qy, qz] is: v' = 2(u*dot(u,v) + (qw*qw - 0.5)*v + qw*cross(u,v))
# more explicitly, v' =
# [x' = 2(d*qx + s*x + qw*(qy*z - qz*y)),
#  y' = 2(d*qy + s*y + qw*(qz*x - qx*z)),
#  z' = 2(d*qz + s*z + qw*(qx*y - qy*x))]
# where d = qx*x + qy*y + qz*z and s = qw*qw - 0.5

# store values
execute \
    store result score $d1 tu.math \
    store result score $cz1 tu.math \
    store result score $cy2 tu.math \
    run scoreboard players operation $x' tu.math = $qx tu.math
execute \
    store result score $d2 tu.math \
    store result score $cx1 tu.math \
    store result score $cz2 tu.math \
    run scoreboard players operation $y' tu.math = $qy tu.math
execute \
    store result score $d3 tu.math \
    store result score $cx2 tu.math \
    store result score $cy1 tu.math \
    run scoreboard players operation $z' tu.math = $qz tu.math

# u*dot(u,v)
scoreboard players operation $d1 tu.math *= $x tu.math
scoreboard players operation $d2 tu.math *= $y tu.math
scoreboard players operation $d3 tu.math *= $z tu.math
scoreboard players operation $d1 tu.math += $d2 tu.math
scoreboard players operation $d1 tu.math += $d3 tu.math
scoreboard players operation $d1 tu.math /= #1000 tu.math
scoreboard players operation $x' tu.math *= $d1 tu.math
scoreboard players operation $y' tu.math *= $d1 tu.math
scoreboard players operation $z' tu.math *= $d1 tu.math

# + (qw*qw - 0.5)*v
scoreboard players operation $s tu.math = $qw tu.math
scoreboard players operation $s tu.math *= $s tu.math
scoreboard players remove $s tu.math 500000
execute \
    store result score $sx tu.math \
    store result score $sy tu.math \
    store result score $sz tu.math \
    run scoreboard players operation $s tu.math /= #1000 tu.math
scoreboard players operation $sx tu.math *= $x tu.math
scoreboard players operation $sy tu.math *= $y tu.math
scoreboard players operation $sz tu.math *= $z tu.math
scoreboard players operation $x' tu.math += $sx tu.math
scoreboard players operation $y' tu.math += $sy tu.math
scoreboard players operation $z' tu.math += $sz tu.math

# + qw*cross(u,v)
scoreboard players operation $cx1 tu.math *= $z tu.math
scoreboard players operation $cx2 tu.math *= $y tu.math
scoreboard players operation $cy1 tu.math *= $x tu.math
scoreboard players operation $cy2 tu.math *= $z tu.math
scoreboard players operation $cz1 tu.math *= $y tu.math
scoreboard players operation $cz2 tu.math *= $x tu.math
scoreboard players operation $cx1 tu.math -= $cx2 tu.math
scoreboard players operation $cy1 tu.math -= $cy2 tu.math
scoreboard players operation $cz1 tu.math -= $cz2 tu.math
scoreboard players operation $cx1 tu.math /= #1000 tu.math
scoreboard players operation $cy1 tu.math /= #1000 tu.math
scoreboard players operation $cz1 tu.math /= #1000 tu.math
scoreboard players operation $cx1 tu.math *= $qw tu.math
scoreboard players operation $cy1 tu.math *= $qw tu.math
scoreboard players operation $cz1 tu.math *= $qw tu.math
scoreboard players operation $x' tu.math += $cx1 tu.math
scoreboard players operation $y' tu.math += $cy1 tu.math
scoreboard players operation $z' tu.math += $cz1 tu.math

# * 2
scoreboard players operation $x' tu.math /= #500 tu.math
scoreboard players operation $y' tu.math /= #500 tu.math
scoreboard players operation $z' tu.math /= #500 tu.math