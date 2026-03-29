scoreboard players operation @s exp.weight = @s exp.mass
execute store result score @s exp.gravity run function expansion:mechanics/gravity/get_score
scoreboard players operation @s exp.weight *= @s exp.gravity
scoreboard players operation @s exp.weight /= #100 exp.const