# >>> generated function callers >>>
# Callers for expansion:mobs/martian/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if entity @s[nbt={DeathTime:19s}] run return run function expansion:mobs/martian/death

particle portal ~ ~.5 ~ .2 .5 .2 0.1 10

execute if entity @s[tag=exp.ranged_mob] run function expansion:mobs/martian/ranged/main

execute if entity @s[tag=exp.melee_mob] run function expansion:mobs/martian/melee/main