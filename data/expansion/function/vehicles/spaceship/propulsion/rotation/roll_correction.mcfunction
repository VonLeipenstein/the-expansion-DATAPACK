# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/rotation/roll_correction
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/propulsion/rotation/roll (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.roll matches 180000.. run scoreboard players remove @s exp.roll 360000
execute if score @s exp.roll matches ..-180000 run scoreboard players add @s exp.roll 360000