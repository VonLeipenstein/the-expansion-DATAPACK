# >>> generated function callers >>>
# Callers for expansion:items/thermometer/heat_resist
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/thermometer/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

data modify storage expansion:temp tellraw.temperature[0] set value {text:"Temperature Score: ",color:"gold"}
data modify storage expansion:temp tellraw.temperature[1].color set value "gold"

data modify storage expansion:temp tellraw.head[1].objective set value "exp.heat_resist"
data modify storage expansion:temp tellraw.chest[1].objective set value "exp.heat_resist"
data modify storage expansion:temp tellraw.legs[1].objective set value "exp.heat_resist"
data modify storage expansion:temp tellraw.feet[1].objective set value "exp.heat_resist"

execute if score @s exp.temperature > #head exp.heat_resist run data modify storage expansion:temp tellraw.head[1].color set value "red"
execute if score @s exp.temperature > #chest exp.heat_resist run data modify storage expansion:temp tellraw.chest[1].color set value "red"
execute if score @s exp.temperature > #legs exp.heat_resist run data modify storage expansion:temp tellraw.legs[1].color set value "red"
execute if score @s exp.temperature > #feet exp.heat_resist run data modify storage expansion:temp tellraw.feet[1].color set value "red"

data modify storage expansion:temp tellraw.head[0].color set value "gold"
data modify storage expansion:temp tellraw.chest[0].color set value "gold"
data modify storage expansion:temp tellraw.legs[0].color set value "gold"
data modify storage expansion:temp tellraw.feet[0].color set value "gold"

