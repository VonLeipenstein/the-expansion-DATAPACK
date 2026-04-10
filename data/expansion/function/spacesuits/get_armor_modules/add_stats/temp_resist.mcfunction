# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/add_stats/temp_resist
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:spacesuits/get_armor_modules/add_stats/all (1 caller) [OK same-folder]
# - function expansion:spacesuits/get_armor_modules/storage_loop (1 caller) [OK above +1]
# <<< generated function callers <<<

# heat resistance
execute store result score #max exp.math run data get storage expansion:temp stats.heat_resist.modifier
scoreboard players operation #temp exp.heat_resist += #max exp.math
scoreboard players reset #max exp.math

# cold resistance
execute store result score #max exp.math run data get storage expansion:temp stats.cold_resist.modifier
scoreboard players operation #temp exp.cold_resist += #max exp.math
scoreboard players reset #max exp.math