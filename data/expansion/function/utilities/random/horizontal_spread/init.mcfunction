# >>> generated function callers >>>
# Callers for expansion:utilities/random/horizontal_spread/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/martian/summon_mite (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# X direction
execute store result score #temp exp.math run random value -10..10
execute rotated 0.0 0.0 run function expansion:utilities/random/horizontal_spread/loop

# Z direction
execute store result score #temp exp.math run random value -10..10
execute rotated 90.0 0.0 run function expansion:utilities/random/horizontal_spread/loop

scoreboard players reset #temp exp.math