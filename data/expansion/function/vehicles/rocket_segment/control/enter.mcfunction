# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/control/enter
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/click_detection/rightclick (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.offset_camel] on passengers on passengers run ride @p[tag=exp.clicking_player] mount @s
tag @p[tag=exp.clicking_player] add exp.inside_rocket
tag @p[tag=exp.clicking_player] add exp.inside_vehicle