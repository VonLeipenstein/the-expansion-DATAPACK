# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/anim_control/start_driving_back
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/buggy/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=aj.buggy.root] run function animated_java:buggy/animations/drive_back/resume

tag @s add exp.buggy_driving
tag @s add exp.buggy_driving_back