# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/inside
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/main (2 callers) [OK same-folder]
# <<< generated function callers <<<

# runs when fueling
execute if entity @s[tag=exp.fueling_rocket] run function expansion:vehicles/rocket/fuel

# runs while launching
execute if score @s exp.timer_2 matches 1.. at @s run function expansion:vehicles/rocket/countdown

# runs while flying upwards
execute if entity @s[tag=exp.launching] at @s run function expansion:vehicles/rocket/propulsion

# actionbar
execute if predicate expansion:periodic/5 run function expansion:vehicles/rocket/text_display