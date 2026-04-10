# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/summon/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/place (1 caller) [OK above +2]
# <<< generated function callers <<<

# summon a new entity stack for the spaceship
function expansion:vehicles/spaceship/summon/new_entity_stack

# set the data of the new spaceship
execute as @e[type=minecraft:armor_stand,tag=exp.spaceship,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/spaceship/summon/setup