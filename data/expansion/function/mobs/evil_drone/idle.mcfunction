# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/idle
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^0.4 ~ ~

# apply a random chance to turn a bit to make some random behavior
execute at @s if predicate expansion:chance/005_chance run rotate @s ~10 ~
execute at @s if predicate expansion:chance/005_chance run rotate @s ~-10 ~

execute at @s if predicate expansion:chance/005_chance run rotate @s ~ ~1
execute at @s if predicate expansion:chance/005_chance run rotate @s ~ ~-1
