# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/demount
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/buggy/click_detection/leftclick (1 caller) [WARN side/down 1]
# - function expansion:vehicles/buggy/dismantle (1 caller) [OK same-folder]
# <<< generated function callers <<<

playsound block.metal.break block @a ~ ~ ~

execute on passengers if entity @s[tag=aj.buggy.root] run function animated_java:buggy/remove/this
execute on passengers run kill @s[type=!player]
kill @s
