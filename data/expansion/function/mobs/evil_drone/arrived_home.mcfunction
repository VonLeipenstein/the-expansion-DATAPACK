# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/arrived_home
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/return_home (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.home_too_far

execute store result score #temp exp.value run random value 0..3
execute if score #temp exp.value matches 0 run rotate @s ~30 ~
execute if score #temp exp.value matches 1 run rotate @s ~-30 ~
execute if score #temp exp.value matches 2 run rotate @s ~60 ~
execute if score #temp exp.value matches 3 run rotate @s ~-60 ~
