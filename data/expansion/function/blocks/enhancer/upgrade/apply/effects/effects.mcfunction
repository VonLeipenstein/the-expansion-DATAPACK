# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/effects
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

## During the loop, gather scores from modules

# oxygen lvl
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #mod exp.math
scoreboard players reset #mod exp.math

# oxygen max
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".oxygen.max
scoreboard players operation #temp exp.oxygen_max += #mod exp.math
scoreboard players reset #mod exp.math

# heat resistance
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".heat_resist.modifier store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".heat_resist.modifier
scoreboard players operation #temp exp.heat_resist += #mod exp.math
scoreboard players reset #mod exp.math

# cold resistance
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".cold_resist.modifier store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".cold_resist.modifier
scoreboard players operation #temp exp.cold_resist += #mod exp.math
scoreboard players reset #mod exp.math

# armor
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".armor.add_value store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".armor.add_value
scoreboard players operation #temp exp.armor += #mod exp.math
scoreboard players reset #mod exp.math

# speed
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".speed.add_percent store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".speed.add_percent
scoreboard players operation #temp exp.speed += #mod exp.math
scoreboard players reset #mod exp.math

# extra durability (percentage) (can never remove 100% durability)
execute if data storage expansion:temp ModStorage[0].components."minecraft:custom_data".max_damage.add_percent store result score #mod exp.math run data get storage expansion:temp ModStorage[0].components."minecraft:custom_data".max_damage.add_percent
execute if score #mod exp.math matches -1000.. run scoreboard players operation #temp exp.max_health += #mod exp.math
execute if score #temp exp.max_health matches ..-100 run scoreboard players set #temp exp.max_health -99
scoreboard players reset #mod exp.math