# >>> generated function callers >>>
# Callers for expansion:mobs/drone_pet/summon/summon
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/drone_pet/use (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

summon minecraft:item_display ~ ~1 ~ {\
    Tags:[\
        "exp.pet_drone",\
        "exp.pet_drone.new",\
        "exp.mob",\
        "exp.new_drone"\
    ],\
    transformation:{\
        left_rotation:[0,0,0,1],\
        right_rotation:[0,0,0,1],\
        translation:[0.0,0.0,0.0],\
        scale:[0.5,0.5,0.5]},\
    teleport_duration:1,\
    CustomName:{text:"Scanner Drone"},\
    Passengers:[\
        {id:"minecraft:marker",Tags:["exp.mob_marker"]},\
        {id:"minecraft:interaction",Tags:["exp.pet_drone_rcdet"],response:1b,width:0.5f,height:0.5f}\
    ]\
}

execute positioned ~ ~1 ~ as @e[type=item_display,tag=exp.pet_drone.new,distance=..0.01,limit=1] run function expansion:mobs/drone_pet/summon/setup