# >>> generated function callers >>>
# Callers for expansion:items/rocket_launcher/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute at @s anchored eyes summon marker run function expansion:projectiles/homing_rocket/target/cast

execute at @s anchored eyes positioned ^ ^ ^5 run function expansion:projectiles/homing_rocket/summon/new_stack