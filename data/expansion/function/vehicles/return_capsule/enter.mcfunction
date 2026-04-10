# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/enter
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/return_capsule/click_detection/rightclick (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

ride @s mount @e[type=minecraft:armor_stand,tag=exp.return_capsule,distance=..50,limit=1,sort=nearest]

tag @s add exp.inside_capsule
tag @s add exp.inside_vehicle
