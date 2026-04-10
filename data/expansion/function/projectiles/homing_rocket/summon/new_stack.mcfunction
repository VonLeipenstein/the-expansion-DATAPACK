# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/summon/new_stack
# Total callers: 3 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:items/rocket_launcher/use (1 caller) [WARN side/down 5]
# - function expansion:vehicles/mech/actions/rocket/launch (2 callers) [WARN side/down 7]
# <<< generated function callers <<<

summon item_display ~ ~ ~ {Tags:["exp.homing_rocket","exp.slowcast","exp.ignore_as_target"],Passengers:[{id:"minecraft:snowball",NoGravity:1b,Invulnerable:1b},{id:"minecraft:interaction",Tags:["exp.homing_rocket_lcdet"],response:true,height:0.25f,width:0.5f},{id:"minecraft:interaction",Tags:["exp.homing_rocket_lcdet"],response:true,height:-0.25f,width:0.5f}],item:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:missile"}},teleport_duration:1,transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.5f,0.0f]}}

# save the data of the entity who shot the rocket
data modify storage expansion:temp rocket_owner set from entity @s UUID

# merge rocket data
execute as @e[type=item_display,tag=exp.homing_rocket,distance=..0.01,limit=1] run function expansion:projectiles/homing_rocket/summon/setup