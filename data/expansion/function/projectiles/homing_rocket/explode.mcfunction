# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/explode
# Total callers: 3 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/homing_rocket/loop (3 callers) [OK same-folder]
# <<< generated function callers <<<

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode ambient @a ~ ~ ~

execute on passengers on origin if entity @s[type=marker] run kill @s

execute as @e[type=!#expansion:ignore,tag=!exp.ignore_for_damage,distance=..5] run function expansion:projectiles/homing_rocket/damage
execute on passengers run kill @s
kill @s