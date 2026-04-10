# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/rocket/waiting
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/rocket/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players remove @s exp.timer_2 1

execute if score @s exp.timer_2 matches 0 run function expansion:blocks/launch_pad/rocket/return