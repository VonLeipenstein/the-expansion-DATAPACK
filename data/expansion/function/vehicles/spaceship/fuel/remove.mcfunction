# base fuel reduction
scoreboard players set #temp exp.fuel_level 20

# reduction calculation
scoreboard players operation #temp exp.fuel_level *= @s exp.fuel_efficiency
scoreboard players operation #temp exp.fuel_level /= #100 exp.const
scoreboard players operation @s exp.fuel_level -= #temp exp.fuel_level

# reset temp score
scoreboard players reset #temp exp.fuel_level