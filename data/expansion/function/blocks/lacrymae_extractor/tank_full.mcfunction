execute store result score #temp exp.fuel_level run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.lvl
execute store result score #temp exp.fuel_max run data get block ~ ~ ~ Items[{Slot:6b}].components."minecraft:custom_data".fuel.max

execute if score #temp exp.fuel_level = #temp exp.fuel_max run return 1

return fail