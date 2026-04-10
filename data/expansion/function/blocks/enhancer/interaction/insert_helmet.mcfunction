# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/interaction/insert_helmet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/interaction/swap_helmet (1 caller) [OK same-folder]
# <<< generated function callers <<<

item replace block ~ ~-1 ~ container.10 from entity @p[tag=exp.clicked] weapon.mainhand
item replace entity @p[tag=exp.clicked] weapon.mainhand with air

execute positioned ~ ~-1 ~ run function expansion:blocks/enhancer/display_helmet