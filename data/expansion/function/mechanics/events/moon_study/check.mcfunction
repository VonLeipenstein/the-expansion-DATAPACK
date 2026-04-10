# >>> generated function callers >>>
# Callers for expansion:mechanics/events/moon_study/check
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/using_spyglass (1 caller)
# <<< generated function callers <<<

scoreboard players reset @s exp.bool

execute if predicate expansion:dimension/overworld unless entity @s[y_rotation=-80..80] unless entity @s[y_rotation=100..180] unless entity @s[y_rotation=-180..-100] run function expansion:mechanics/events/moon_study/calculation
advancement revoke @s only expansion:utility/using_spyglass