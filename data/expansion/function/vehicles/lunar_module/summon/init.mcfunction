# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/summon/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/place (1 caller) [OK above +2]
# <<< generated function callers <<<

function expansion:vehicles/lunar_module/summon/new_entity_stack

# set the data of the new spaceship
execute as @e[type=minecraft:armor_stand,tag=exp.lunar_module,tag=exp.new_vehicle,distance=..0.01,limit=1] run function expansion:vehicles/lunar_module/summon/setup