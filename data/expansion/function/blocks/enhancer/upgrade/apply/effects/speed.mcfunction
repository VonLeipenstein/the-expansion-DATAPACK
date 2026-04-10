# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/speed
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/apply/effects/init_loop (1 caller) [OK same-folder]
# <<< generated function callers <<<

## get the base armor modifier value, add the accumulated modifier from all the modules, merge the new value

# merge this with the speed modifier
execute store result entity @s item.components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}].amount double 0.01 run scoreboard players get #temp exp.speed

# reset scores
scoreboard players reset #base exp.speed
scoreboard players reset #temp exp.speed