execute if entity @s[type=player] run say please dont run store_pos_in_score as a player, this kills performance
data modify storage expansion:temp Pos set from entity @s Pos
execute store result score @s exp.x run data get storage expansion:temp Pos[0]
execute store result score @s exp.y run data get storage expansion:temp Pos[1]
execute store result score @s exp.z run data get storage expansion:temp Pos[2]
data remove storage expansion:temp Pos