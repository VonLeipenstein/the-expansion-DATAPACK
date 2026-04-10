# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# inside functions
execute if entity @s[tag=exp.rocket_pilot] on vehicle on vehicle run function expansion:vehicles/rocket/inside
execute if entity @s[tag=!exp.rocket_pilot] on vehicle on vehicle on vehicle run function expansion:vehicles/rocket/inside