# >>> generated function callers >>>
# Callers for expansion:items/rocket_boots/ascend
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/rocket_boots/try_flight (1 caller) [OK same-folder]
# <<< generated function callers <<<

effect give @s levitation 1 3 true
execute anchored feet run function expansion:items/rocket_boots/particles
playsound expansion:rboots.ascend player @s[tag=!exp.boosting] ~ ~-2 ~
execute unless block ~ ~2 ~ #expansion:air run function expansion:items/rocket_boots/turn_off
