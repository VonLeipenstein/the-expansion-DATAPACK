scoreboard players reset #temp exp.heat_resist
scoreboard players reset #temp exp.cold_resist

# loop through all armor pieces
function expansion:spacesuits/get_armor_modules/init_loop

# merge the new scores
scoreboard players operation @s exp.heat_resist = #temp exp.heat_resist
scoreboard players operation @s exp.cold_resist = #temp exp.cold_resist
scoreboard players reset #temp exp.oxygen_lvl
scoreboard players reset #temp exp.oxygen_max
scoreboard players reset #temp exp.heat_resist
scoreboard players reset #temp exp.cold_resist
