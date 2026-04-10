# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/inside
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.timer_2 matches 1.. run function expansion:vehicles/lunar_module/countdown

execute if score @s exp.timer_2 matches 0 run function expansion:vehicles/lunar_module/propulsion

# store players position
execute if predicate expansion:periodic/5 run function expansion:vehicles/lunar_module/actionbar