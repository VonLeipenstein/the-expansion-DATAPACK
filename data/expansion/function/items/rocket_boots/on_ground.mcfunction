# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/on_ground
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/rocket_boots/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s[tag=exp.flying_boots] remove exp.flying_boots

scoreboard players reset @s exp.rboots_warmup

scoreboard players remove @s[scores={exp.rboots_cooldown=1..}] exp.rboots_cooldown 2
