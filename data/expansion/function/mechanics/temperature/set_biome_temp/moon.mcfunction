# >>> generated function callers >>>
# Callers for expansion:mechanics/temperature/set_biome_temp/moon
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/temperature/set_biome_temp/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# The ice caves are too cold until after mars
execute if biome ~ ~ ~ expansion:moon/ice_lake_caves run return run scoreboard players set @s exp.temperature -8

# all other moon biomes have a temperature that is perfectly balanced by 1 warming module
scoreboard players set @s exp.temperature -2