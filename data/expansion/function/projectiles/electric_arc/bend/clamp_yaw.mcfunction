# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bend/clamp_yaw
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/bend/bend (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score #temp exp.yaw matches 180.. run return run scoreboard players remove #temp exp.yaw 360

scoreboard players add #temp exp.yaw 360