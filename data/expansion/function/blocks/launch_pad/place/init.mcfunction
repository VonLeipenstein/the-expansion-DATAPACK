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
        {id:"minecraft:text_display",Tags:["exp.rocket_diagnostics_title"],background:0,alignment:"center",text:[{text:"Diagnostics",underlined:true,bold:true}]},\
        {id:"minecraft:text_display",Tags:["exp.rocket_diagnostics"],background:0,alignment:"left"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_origin_title"],background:0,alignment:"center",text:[{text:"Current Planet\n\n\n\n\n\n",underlined:true,bold:true}]},\
        {id:"minecraft:text_display",Tags:["exp.rocket_origin_texture"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_origin"],background:0,alignment:"right"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_destination_title"],background:0,alignment:"center",text:[{text:"Select Destination\n\n\n\n\n\n\n",underlined:true,bold:true}]},\
        {id:"minecraft:text_display",Tags:["exp.rocket_destination_texture"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_destination"],background:0,alignment:"right"},\
        {id:"minecraft:text_display",Tags:["exp.destination_left"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.destination_right"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_trip_title"],background:0,alignment:"center",text:[{text:"Fuel Costs\n",underlined:true,bold:true}]},\
        {id:"minecraft:text_display",Tags:["exp.rocket_trip"],background:0,alignment:"left"},\
        {id:"minecraft:snowball",Tags:["exp.rocket_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:snowball",Tags:["exp.left_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:snowball",Tags:["exp.right_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:interaction",Tags:["exp.launch_pad_hitbox"],width:3.0,height:0.3}\
    ]\
}

execute positioned ~ ~ ~ as @n[type=minecraft:item_display,tag=exp.launch_pad.new,distance=..0.01] positioned ~ ~ ~ run function expansion:blocks/launch_pad/place/setup