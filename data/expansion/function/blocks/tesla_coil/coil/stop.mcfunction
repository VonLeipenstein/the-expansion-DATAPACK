# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/stop
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/active (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.active_coil
execute on passengers run tag @s[tag=exp.tesla_hitbox] remove exp.active_coil

scoreboard players set @s exp.cooldown 0

stopsound @a[distance=..10] block expansion:teslacoil.charge