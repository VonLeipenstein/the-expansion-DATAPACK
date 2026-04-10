# >>> generated function callers >>>
# Callers for expansion:mechanics/temperature/set_biome_temp/mars
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/temperature/set_biome_temp/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# The ice caves are too cold until after mars
execute if biome ~ ~ ~ expansion:mars/ice_caves run return run scoreboard players operation @s exp.temperature = #mars_ice_caves exp.temperature

# other biomes
scoreboard players operation @s exp.temperature = #mars exp.temperature