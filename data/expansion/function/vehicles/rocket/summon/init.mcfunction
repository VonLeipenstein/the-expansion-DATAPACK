# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/summon/init
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/rocket_parts/create_rocket (1 caller) [WARN side/down 5]
# - function expansion:vehicles/place (1 caller) [OK above +2]
# <<< generated function callers <<<

# summon all the rocket entities
function expansion:vehicles/rocket/summon/new_entity_stack

# set the fuel level from the handheld item
execute as @e[type=minecraft:armor_stand,tag=exp.rocket,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/rocket/summon/setup
