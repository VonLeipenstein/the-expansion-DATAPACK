# >>> generated function callers >>>
# Callers for expansion:mobs/evil_drone/no_passenger
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/evil_drone/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.new_drone] summon minecraft:vex run return run function expansion:mobs/evil_drone/add_passenger

function expansion:mobs/evil_drone/death
