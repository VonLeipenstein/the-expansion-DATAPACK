# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/hit/turret
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/damage (1 caller) [OK above +1]
# <<< generated function callers <<<

# reset the cooldown of a turret this hits
execute on vehicle if score @s exp.cooldown matches 2.. run scoreboard players set @s exp.cooldown 2

return 2