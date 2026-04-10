# >>> generated function callers >>>
# Callers for expansion:items/railgun/warmup
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:items/railgun/use (1 caller) [OK same-folder]
# - function expansion:mobs/martian/ranged/shooting/main (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

scoreboard players operation @s exp.warmup = #railgun_warmup exp.warmup
playsound expansion:railgun.shoot player @a ~ ~ ~ 0.5 1 0.01