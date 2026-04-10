# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/enter
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/click_detection/rightclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

ride @s mount @e[type=minecraft:armor_stand,tag=exp.mech_seat,limit=1,sort=nearest]

rotate @s ~ ~

execute on vehicle on vehicle run tag @s remove exp.mod_vehicle

tag @s add exp.inside_mech
tag @s add exp.inside_vehicle
tag @s add exp.mech_pilot
tag @s add exp.ignore_hitbox_hits