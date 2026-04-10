# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/health/slightly_damaged
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/health/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

#particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 2

execute if predicate expansion:periodic/10 if predicate expansion:chance/050_chance run particle firework ~ ~ ~ .5 .5 .5 0.1 10
