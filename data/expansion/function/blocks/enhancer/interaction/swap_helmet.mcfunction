# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/interaction/swap_helmet
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/enhancer/interaction/interact (2 callers) [OK same-folder]
# <<< generated function callers <<<

execute on vehicle if items entity @s contents * unless items entity @p weapon.mainhand * at @s run return run function expansion:blocks/enhancer/interaction/take_helmet

execute on vehicle unless items entity @s contents * if items entity @p[tag=exp.clicked] weapon.mainhand *[minecraft:custom_data~{exp.enhanceable:1b}] at @s run function expansion:blocks/enhancer/interaction/insert_helmet