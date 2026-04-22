execute unless score #input exp.gravity matches 0.. run execute store result score #input exp.gravity run function expansion:mechanics/gravity/get_score
execute store result score #temp exp.weight run function expansion:vehicles/rocket_segment/get_stat/mass/total

scoreboard players operation #temp exp.weight *= #input exp.gravity
scoreboard players operation #temp exp.weight /= #100 exp.const

scoreboard players operation #return exp.value = #temp exp.weight

scoreboard players reset #input exp.gravity
scoreboard players reset #temp exp.weight

return run scoreboard players get #return exp.value