# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/summon/calculate_stats
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 1/3 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/spaceship/apply_mods/apply_upgrade (1 caller) [WARN side/down 8]
# - function expansion:blocks/modification_station/upgrade/spaceship/remove_mods/initiate (1 caller) [WARN side/down 8]
# - function expansion:vehicles/spaceship/summon/setup (1 caller) [OK same-folder]
# <<< generated function callers <<<

## speed_max
execute store result score #speed_max exp.math run data get entity @s data.stats.speed_max.base
execute store result score #speed_max_mod exp.math run data get entity @s data.stats.speed_max.add_percent
scoreboard players operation #speed_max_mod exp.math *= #speed_max exp.math
scoreboard players operation #speed_max_mod exp.math /= #100 exp.const
scoreboard players operation #speed_max exp.math += #speed_max_mod exp.math
execute unless score #speed_max exp.math matches 1.. run scoreboard players set #speed_max exp.math 1
scoreboard players operation @s exp.speed_max = #speed_max exp.math

## fuel max
execute store result score #fuel_max exp.math run data get entity @s data.stats.fuel_max.base
execute store result score #fuel_max_mod exp.math run data get entity @s data.stats.fuel_max.add_percent
scoreboard players operation #fuel_max_mod exp.math *= #fuel_max exp.math
scoreboard players operation #fuel_max_mod exp.math /= #100 exp.const
scoreboard players operation #fuel_max exp.math += #fuel_max_mod exp.math
execute unless score #fuel_max exp.math matches 1.. run scoreboard players set #fuel_max exp.math 1
scoreboard players operation @s exp.fuel_max = #fuel_max exp.math

## fuel efficiency
execute store result score #fuel_efficiency exp.math run data get entity @s data.stats.fuel_efficiency.base
execute store result score #fuel_efficiency_mod exp.math run data get entity @s data.stats.fuel_efficiency.add_percent
scoreboard players operation #fuel_efficiency_mod exp.math *= #fuel_efficiency exp.math
scoreboard players operation #fuel_efficiency_mod exp.math /= #100 exp.const
scoreboard players operation #fuel_efficiency exp.math += #fuel_efficiency_mod exp.math
execute unless score #fuel_efficiency exp.math matches 1.. run scoreboard players set #fuel_efficiency exp.math 1
scoreboard players operation @s exp.fuel_efficiency = #fuel_efficiency exp.math