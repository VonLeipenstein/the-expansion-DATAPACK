# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/transform/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/main (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players remove @s exp.timer_1 1

execute if score @s exp.timer_1 matches 0 run function expansion:blocks/rocket_parts/create_rocket