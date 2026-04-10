# >>> generated function callers >>>
# Callers for expansion:items/transporter/transport_player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/transport (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @p[tag=exp.transporting] ~.5 129 .5

execute in expansion:storage run tp @s @p[tag=exp.transporting]

scoreboard players set @p[tag=exp.transporting] exp.cooldown 100

tag @p[tag=exp.transporting] add exp.tp_rev_prev
tag @p[tag=exp.transporting] add exp.check_loaded

kill @s
