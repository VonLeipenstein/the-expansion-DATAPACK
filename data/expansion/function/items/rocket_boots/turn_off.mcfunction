# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/turn_off
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:items/rocket_boots/ascend (1 caller) [OK same-folder]
# - function expansion:items/rocket_boots/main (1 caller) [OK same-folder]
# - function expansion:items/rocket_boots/slow_beep (1 caller) [OK same-folder]
# <<< generated function callers <<<

stopsound @s[tag=exp.boosting] player expansion:rboots.ascend
playsound expansion:rboots.turnoff player @s[tag=exp.boosting] ~ ~-2 ~
effect clear @s levitation
tag @s remove exp.boosting
tag @s remove exp.flying_boots