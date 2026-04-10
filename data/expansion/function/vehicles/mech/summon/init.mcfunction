# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/summon/init
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:mobs/mech/summon/summon (1 caller) [WARN side/down 6]
# - function expansion:vehicles/place (1 caller) [OK above +2]
# <<< generated function callers <<<

# new mech entity stack
function expansion:vehicles/mech/summon/new_entity_stack

# set data
execute as @e[type=armor_stand,tag=exp.mech,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/mech/summon/setup