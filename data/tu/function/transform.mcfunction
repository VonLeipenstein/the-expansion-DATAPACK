#> Build a decomposed transformation matrix which includes a translation before left_rotation
# Manually calculate the quaternion rotation of the first_translation vector, then combine with second translation to get final dispaly entity position
# input handling
$data modify storage tu:io out set value {right_rotation:$(right_rotation),scale:$(scale),left_rotation:$(left_rotation),translation:$(translation)}
$data modify storage tu:data t set value $(first_translation)
execute store result score $x tu.math run data get storage tu:data t[0] 1000
execute store result score $y tu.math run data get storage tu:data t[1] 1000
execute store result score $z tu.math run data get storage tu:data t[2] 1000
execute store result score $qx tu.math run data get storage tu:io out.left_rotation[0] 1000
execute store result score $qy tu.math run data get storage tu:io out.left_rotation[1] 1000
execute store result score $qz tu.math run data get storage tu:io out.left_rotation[2] 1000
execute store result score $qw tu.math run data get storage tu:io out.left_rotation[3] 1000
execute store result score $tx tu.math run data get storage tu:io out.translation[0] 1000
execute store result score $ty tu.math run data get storage tu:io out.translation[1] 1000
execute store result score $tz tu.math run data get storage tu:io out.translation[2] 1000

# quaternion rotation
function tu:internal/quatrot

# second translation
scoreboard players operation $x' tu.math += $tx tu.math
scoreboard players operation $y' tu.math += $ty tu.math
scoreboard players operation $z' tu.math += $tz tu.math

# store values
execute store result storage tu:io out.translation[0] float 0.001 run scoreboard players get $x' tu.math
execute store result storage tu:io out.translation[1] float 0.001 run scoreboard players get $y' tu.math
execute store result storage tu:io out.translation[2] float 0.001 run scoreboard players get $z' tu.math