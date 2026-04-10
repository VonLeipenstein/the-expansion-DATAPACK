# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/damage
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:projectiles/homing_rocket/explode (1 caller) [OK same-folder]
# <<< generated function callers <<<

damage @s 12 explosion

execute if entity @s[tag=exp.hitbox] on vehicle run scoreboard players set @s exp.damage 20