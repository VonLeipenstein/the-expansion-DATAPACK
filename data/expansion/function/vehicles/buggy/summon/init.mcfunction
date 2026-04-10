# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/summon/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/place (1 caller) [OK above +2]
# <<< generated function callers <<<

# summon the buggy entity stack
function expansion:vehicles/buggy/summon/new_entity_stack

# set all the values for the buggy
execute as @e[type=minecraft:armor_stand,tag=exp.moon_buggy,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/buggy/summon/setup