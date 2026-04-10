# >>> generated function callers >>>
# Callers for expansion:projectiles/electric_arc/bend/towards_target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/electric_arc/bend/bend (1 caller) [OK same-folder]
# <<< generated function callers <<<

# rotate the entity towards the target
execute on origin facing entity @s eyes as @e[type=snowball,tag=exp.electric_arc,distance=..0.01,limit=1] run rotate @s ~ ~

# store the rotation for later use
function expansion:projectiles/electric_arc/bend/get_rotation
