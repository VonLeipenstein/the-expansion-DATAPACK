data modify storage expansion:position Pos set from entity @s Pos
execute store result score @s exp.x run data get storage expansion:position Pos[0]
execute store result score @s exp.y run data get storage expansion:position Pos[1]
execute store result score @s exp.z run data get storage expansion:position Pos[2]