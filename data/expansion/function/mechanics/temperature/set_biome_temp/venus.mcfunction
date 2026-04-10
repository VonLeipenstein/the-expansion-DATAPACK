# >>> generated function callers >>>
# Callers for expansion:mechanics/temperature/set_biome_temp/venus
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/temperature/set_biome_temp/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# The caves are very warm on Venus
execute if biome ~ ~ ~ #expansion:venus_caves run return run scoreboard players set @s exp.temperature 16

# other biomes
scoreboard players set @s exp.temperature 8