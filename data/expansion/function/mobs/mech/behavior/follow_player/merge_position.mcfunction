# Copy each coordinate from the double array to the int array
data modify storage expansion:mob_pos PosOut[0] set from storage expansion:mob_pos PosIn[0]
data modify storage expansion:mob_pos PosOut[1] set from storage expansion:mob_pos PosIn[1]
data modify storage expansion:mob_pos PosOut[2] set from storage expansion:mob_pos PosIn[2]

# Set the trader's wander target
data modify entity @s wander_target set from storage expansion:mob_pos PosOut