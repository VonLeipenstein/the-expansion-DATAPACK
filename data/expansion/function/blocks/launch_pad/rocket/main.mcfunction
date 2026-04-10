# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/rocket/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/launch_pad/rocket/launching

execute if score @s exp.timer_2 matches 1.. run function expansion:blocks/launch_pad/rocket/waiting

execute if entity @s[tag=exp.landing] run function expansion:blocks/launch_pad/rocket/landing