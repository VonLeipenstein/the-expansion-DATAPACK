execute unless predicate expansion:location/sky_access run return run say requires sky access

summon minecraft:item_display ~ ~ ~ {\
    Tags:["exp.launch_pad","exp.launch_pad.new","exp.block","smithed.block"],\
    transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},\
    Passengers:[\
        {id:"minecraft:text_display",Tags:["exp.rocket_diagnostics"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_origin"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_destination"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.destination_left"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.destination_right"],background:0,alignment:"center"},\
        {id:"minecraft:text_display",Tags:["exp.rocket_trip"],background:0,alignment:"center"},\
        {id:"minecraft:snowball",Tags:["exp.rocket_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:snowball",Tags:["exp.left_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:snowball",Tags:["exp.right_link"],Item:{id:"jigsaw",components:{item_model:"expansion:empty"}},Invulnerable:1b,NoGravity:1b},\
        {id:"minecraft:interaction",Tags:["exp.launch_pad_hitbox"],width:3.0,height:0.3}\
    ]\
}

execute positioned ~ ~ ~ as @n[type=minecraft:item_display,tag=exp.launch_pad.new,distance=..0.01] positioned ~ ~ ~ run function expansion:blocks/launch_pad/place/setup