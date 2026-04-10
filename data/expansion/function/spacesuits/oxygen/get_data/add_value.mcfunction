# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/get_data/add_value
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/oxygen/get_data/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# oxygen lvl
execute store result score #lvl exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #lvl exp.math
scoreboard players reset #lvl exp.math

# oxygen max
execute store result score #max exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
scoreboard players operation #temp exp.oxygen_max += #max exp.math
scoreboard players reset #max exp.math

# signal that you have found a tank
scoreboard players remove #number_of_tanks exp.counter_1 1