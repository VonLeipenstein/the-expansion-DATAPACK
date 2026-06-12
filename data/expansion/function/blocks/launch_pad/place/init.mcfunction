# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/place/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/place (1 caller) [OK above +2]
# <<< generated function callers <<<

execute unless predicate expansion:location/sky_access run return run say requires sky access

summon minecraft:item_display ~ ~ ~ {\
    Tags:["exp.launch_pad","exp.launch_pad.new","exp.block","smithed.block"],\
    transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,1.0f,0.0f],scale:[2.0f,2.0f,2.0f]},\
    Passengers:[\
        {id:"minecraft:snowball",Tags:["exp.rocket_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:interaction",Tags:["exp.launch_pad_hitbox"],width:3.0,height:0.3}\
    ]\
}

execute positioned ~ ~ ~ as @n[type=minecraft:item_display,tag=exp.launch_pad.new,distance=..0.01] positioned ~ ~ ~ run function expansion:blocks/launch_pad/place/setup