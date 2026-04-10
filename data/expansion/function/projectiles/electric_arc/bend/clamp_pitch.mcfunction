# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bend/clamp_pitch
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/bend/bend (1 caller) [OK same-folder]
# <<< generated function callers <<<

# in any case, the yaw should flip, errors in this are handled in the clamp_yaw later
scoreboard players add #temp exp.yaw 180

# using weird minecraft modulo behavior
execute if score #temp exp.pitch matches ..-90 run scoreboard players operation #temp exp.pitch %= #90 exp.const
execute if score #temp exp.pitch matches 90.. run scoreboard players operation #temp exp.pitch %= #-90 exp.const

scoreboard players operation #temp exp.pitch *= #-1 exp.const