# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/reset
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

# reset heat resist
scoreboard players reset #temp exp.heat_resist

# reset cold resist
scoreboard players reset #temp exp.cold_resist

# reset oxygen lvl
scoreboard players reset #temp exp.oxygen_lvl

# reset oxygen max
scoreboard players reset #temp exp.oxygen_max

# reset durability
scoreboard players reset #temp exp.max_health
execute store result entity @s item.components."minecraft:max_damage" int 1 run data get entity @s item.components."minecraft:custom_data".max_damage.base

# reset armor
scoreboard players reset #temp exp.armor
execute store result entity @s item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount int 1 run data get entity @s item.components."minecraft:custom_data".armor.base

# reset speed
scoreboard players reset #temp exp.speed
execute store result entity @s item.components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}].amount int 1 run data get entity @s item.components."minecraft:custom_data".speed.base

data remove storage expansion:temp icons