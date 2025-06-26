 #> multiply quaternion q1 = [qw1, qx1, qy1, qz1] by quaternion q2 = [qw2, qx2, qy2, qz2] to get quaternion q' = [qw', qx', qy', qz']
# input quaternion 1 ($qw1, $qx1, $qy1, $qz1) scaled by 10000 (1.0000 ↦ 10000)
# input quaternion 2 ($qw2, $qx2, $qy2, $qz2) scaled by 10000 (1.0000 ↦ 10000)
# output quaternion ($qw', $qx', $qy', $qz') scaled by 100000000 (1.00000000 ↦ 100000000)
# implementation adapted from https://www.mathworks.com/help/aeroblks/quaternionmultiplication.html
# multiplication of q' = q1q2 follows:
# [qw' = qw2*qw1 - qx2*qx1 - qy2*qy1 - qz2*qz1,
#  qx' = qw2*qx1 + qx2*qw1 - qy2*qz1 + qz2*qy1,
#  qy' = qw2*qy1 + qx2*qz1 + qy2*qw1 - qz2*qx1,
#  qz' = qw2*qz1 - qx2*qy1 + qy2*qx1 + qz2*qw1]
#                     a         b         c

# store values
execute \
    store result score $qx' tu.math \
    store result score $qy' tu.math \
    store result score $qz' tu.math \
    run scoreboard players operation $qw' tu.math = $qw2 tu.math
execute \
    store result score $qxa tu.math \
    store result score $qya tu.math \
    store result score $qza tu.math \
    run scoreboard players operation $qwa tu.math = $qx2 tu.math
execute \
    store result score $qxb tu.math \
    store result score $qyb tu.math \
    store result score $qzb tu.math \
    run scoreboard players operation $qwb tu.math = $qy2 tu.math
execute \
    store result score $qxc tu.math \
    store result score $qyc tu.math \
    store result score $qzc tu.math \
    run scoreboard players operation $qwc tu.math = $qz2 tu.math

# qw'
scoreboard players operation $qw' tu.math *= $qw1 tu.math
scoreboard players operation $qwa tu.math *= $qx1 tu.math
scoreboard players operation $qwb tu.math *= $qy1 tu.math
scoreboard players operation $qwc tu.math *= $qz1 tu.math
scoreboard players operation $qw' tu.math -= $qwa tu.math
scoreboard players operation $qw' tu.math -= $qwb tu.math
scoreboard players operation $qw' tu.math -= $qwc tu.math

# qx'
scoreboard players operation $qx' tu.math *= $qx1 tu.math
scoreboard players operation $qxa tu.math *= $qw1 tu.math
scoreboard players operation $qxb tu.math *= $qz1 tu.math
scoreboard players operation $qxc tu.math *= $qy1 tu.math
scoreboard players operation $qx' tu.math += $qxa tu.math
scoreboard players operation $qx' tu.math -= $qxb tu.math
scoreboard players operation $qx' tu.math += $qxc tu.math

# qy'
scoreboard players operation $qy' tu.math *= $qy1 tu.math
scoreboard players operation $qya tu.math *= $qz1 tu.math
scoreboard players operation $qyb tu.math *= $qw1 tu.math
scoreboard players operation $qyc tu.math *= $qx1 tu.math
scoreboard players operation $qy' tu.math += $qya tu.math
scoreboard players operation $qy' tu.math += $qyb tu.math
scoreboard players operation $qy' tu.math -= $qyc tu.math

# qz'
scoreboard players operation $qz' tu.math *= $qz1 tu.math
scoreboard players operation $qza tu.math *= $qy1 tu.math
scoreboard players operation $qzb tu.math *= $qx1 tu.math
scoreboard players operation $qzc tu.math *= $qw1 tu.math
scoreboard players operation $qz' tu.math -= $qza tu.math
scoreboard players operation $qz' tu.math += $qzb tu.math
scoreboard players operation $qz' tu.math += $qzc tu.math