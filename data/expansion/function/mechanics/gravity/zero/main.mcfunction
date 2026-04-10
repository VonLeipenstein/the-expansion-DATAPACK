# >>> generated function callers >>>
# Callers for expansion:mechanics/gravity/zero/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# FSM for gravity state; floating in place, rising and falling
execute unless predicate expansion:input/jump unless predicate expansion:input/sneak unless entity @s[tag=!exp.gravity_descending,tag=!exp.gravity_ascending] run return run function expansion:mechanics/gravity/zero/float
execute if predicate expansion:input/jump unless entity @s[tag=exp.gravity_ascending] run return run function expansion:mechanics/gravity/zero/ascend
execute if predicate expansion:input/sneak unless entity @s[tag=exp.gravity_descending] run return run function expansion:mechanics/gravity/zero/descend