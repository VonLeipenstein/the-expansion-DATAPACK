# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/anim_control/stop_driving
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/buggy/exit/main (1 caller) [WARN side/down 2]
# - function expansion:vehicles/buggy/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=aj.buggy.root] run function animated_java:buggy/animations/pause_all

tag @s remove exp.buggy_driving
tag @s remove exp.buggy_driving_back