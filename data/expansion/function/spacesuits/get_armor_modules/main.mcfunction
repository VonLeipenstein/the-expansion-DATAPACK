# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/main
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:spacesuits/equip/main (1 caller) [WARN side/down 2]
# - function expansion:spacesuits/unequip/reset_armor (1 caller) [WARN side/down 2]
# - function expansion:spacesuits/unequip/reset_cursor (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

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
