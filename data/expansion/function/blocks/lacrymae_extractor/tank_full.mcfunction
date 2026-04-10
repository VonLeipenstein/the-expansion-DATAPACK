# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/tank_full
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/lacrymae_extractor/check_valid (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute store result score #temp exp.fuel_level run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.lvl
execute store result score #temp exp.fuel_max run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.max

execute if score #temp exp.fuel_level = #temp exp.fuel_max run return 1

return fail