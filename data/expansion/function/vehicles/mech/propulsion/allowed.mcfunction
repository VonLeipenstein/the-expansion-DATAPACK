# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/allowed
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.cooldown matches 1.. run return fail

execute if score @s exp.timer_1 matches ..-1 run return 1

execute if entity @s[tag=exp.mech_jumping] run return 1

execute unless score @s exp.warmup matches 1 run return fail

return 1