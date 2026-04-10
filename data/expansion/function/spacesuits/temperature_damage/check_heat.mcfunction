# >>> generated function callers >>>
# Callers for expansion:spacesuits/temperature_damage/check_heat
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/temperature_damage/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players set #base exp.temperature 0
execute if data storage expansion:temp player.armor[0].id store result score #base exp.temperature run data get storage expansion:temp player.armor[0].components."minecraft:custom_data".heat_resist.total

execute if score @s exp.temperature > #base exp.temperature store result score #temp exp.damage run scoreboard players operation #base exp.temperature -= @s exp.temperature
execute unless score #temp exp.damage matches 0.. run scoreboard players operation #temp exp.damage *= #-1 exp.const

scoreboard players reset #base exp.temperature