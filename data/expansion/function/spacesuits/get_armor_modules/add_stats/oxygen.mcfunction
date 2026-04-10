# >>> generated function callers >>>
# Callers for expansion:spacesuits/get_armor_modules/add_stats/oxygen
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:spacesuits/get_armor_modules/add_stats/all (1 caller) [OK same-folder]
# - function expansion:spacesuits/get_armor_modules/get_module_stats/storage_loop (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# oxygen lvl
execute store result score #lvl exp.math run data get storage expansion:temp stats.oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #lvl exp.math
scoreboard players reset #lvl exp.math

# oxygen max
execute store result score #max exp.math run data get storage expansion:temp stats.oxygen.max
scoreboard players operation #temp exp.oxygen_max += #max exp.math
scoreboard players reset #max exp.math