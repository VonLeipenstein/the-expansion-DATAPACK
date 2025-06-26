#> convert euler angles [a1, a2, a3] into quaternion [qx, qy, qz, qw]
# input euler angles ($a1, $a2, $a3) scaled by 100 (1.00 ↦ 100)
# output quaternion ($qw, $qx, $qy, $qz) scaled by 10000 (1.0000 ↦ 10000)
# for intrinsic rotations of euler angles [a1 (pitch), a2 (yaw), a3 (roll)] in the order a3 (roll) → a2 (yaw) → a1 (pitch), the quaternion [qw, qx, qy, qz] is:
# [qw = cos(a3)*cos(a2)*cos(a1) + sin(a3)*sin(a2)*sin(a1),
#  qx = cos(a3)*cos(a2)*sin(a1) - sin(a3)*sin(a2)*cos(a1),
#  qy = cos(a3)*sin(a2)*cos(a1) + sin(a3)*cos(a2)*sin(a1),
#  qz = sin(a3)*cos(a2)*cos(a1) - cos(a3)*sin(a2)*sin(a1)]

# init
execute \
    store result score $qw tu.math \
    store result score $qy tu.math \
    store result score $qx tu.math \
    run scoreboard players operation $qz2 tu.math = $cos(a3) tu.math
execute \
    store result score $qw2 tu.math \
    store result score $qy2 tu.math \
    store result score $qx2 tu.math \
    run scoreboard players operation $qz tu.math = $sin(a3) tu.math

# qw
scoreboard players operation $qw tu.math *= $cos(a2) tu.math
scoreboard players operation $qw tu.math *= $cos(a1) tu.math
scoreboard players operation $qw2 tu.math *= $sin(a2) tu.math
scoreboard players operation $qw2 tu.math *= $sin(a1) tu.math
scoreboard players operation $qw tu.math += $qw2 tu.math

# qx
scoreboard players operation $qx tu.math *= $cos(a2) tu.math
scoreboard players operation $qx tu.math *= $sin(a1) tu.math
scoreboard players operation $qx2 tu.math *= $sin(a2) tu.math
scoreboard players operation $qx2 tu.math *= $cos(a1) tu.math
scoreboard players operation $qx tu.math -= $qx2 tu.math

# qy
scoreboard players operation $qy tu.math *= $sin(a2) tu.math
scoreboard players operation $qy tu.math *= $cos(a1) tu.math
scoreboard players operation $qy2 tu.math *= $cos(a2) tu.math
scoreboard players operation $qy2 tu.math *= $sin(a1) tu.math
scoreboard players operation $qy tu.math += $qy2 tu.math

# qz
scoreboard players operation $qz tu.math *= $cos(a2) tu.math
scoreboard players operation $qz tu.math *= $cos(a1) tu.math
scoreboard players operation $qz2 tu.math *= $sin(a2) tu.math
scoreboard players operation $qz2 tu.math *= $sin(a1) tu.math
scoreboard players operation $qz tu.math -= $qz2 tu.math