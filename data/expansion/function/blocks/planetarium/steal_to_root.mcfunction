# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/steal_to_root
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/init_root (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/steal_to_root (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add #temp exp.counter_1 1

execute unless entity @s[tag=exp.planetarium_root] on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/steal_to_root

execute if entity @s[tag=exp.planetarium_root] run function expansion:blocks/planetarium/reset