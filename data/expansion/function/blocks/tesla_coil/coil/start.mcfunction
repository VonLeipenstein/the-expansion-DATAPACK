# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/start
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/main (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set @s exp.cooldown 0

tag @s add exp.active_coil

execute on passengers run tag @s[tag=exp.tesla_hitbox] add exp.active_coil