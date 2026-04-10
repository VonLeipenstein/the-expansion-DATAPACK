# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/enter
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/buggy/click_detection/rightclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

ride @p[tag=exp.interacting_buggy] mount @s

execute rotated as @s on passengers run rotate @s ~ ~

execute if predicate expansion:dimension/zero_gravity at @s unless block ~ ~-1 ~ #expansion:air run data merge entity @s {NoGravity:0b}

tag @p[tag=exp.interacting_buggy] add exp.inside_buggy
tag @p[tag=exp.interacting_buggy] add exp.inside_vehicle
tag @s remove exp.mod_vehicle