# >>> generated function callers >>>
# Callers for expansion:items/cargo_rocket_remote/signal_rocket
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/cargo_rocket_remote/use (1 caller) [OK same-folder]
# <<< generated function callers <<<

# set launch countdown
scoreboard players set @s exp.timer_1 200

ride @s dismount

say launched cargo rocket

tag @s add exp.launching
tag @s add exp.delivering