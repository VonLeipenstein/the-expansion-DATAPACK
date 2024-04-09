# merge the position data to the wander target
data modify entity @s WanderTarget.X set from storage expansion:mob_pos Pos[0]

execute store result entity @s WanderTarget.Y double 1 run data get storage expansion:mob_pos Pos[1] 1.1

data modify entity @s WanderTarget.Z set from storage expansion:mob_pos Pos[2]