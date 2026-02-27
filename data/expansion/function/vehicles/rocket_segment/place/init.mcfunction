# run as the entity that will be mounted by this new segment
tag @s add exp.vehicle_segment

summon minecraft:armor_stand ~ ~ ~ \
{\
    attributes:[{id:"minecraft:scale",base:0}],\
    Tags:["exp.rocket_segment","exp.rocket_segment.new","exp.block","smithed.block"],\
    Passengers:[\
        {id:"minecraft:interaction",Tags:["exp.rocketsegment_rcdet"],width:2,height:2,response:1b},\
        {id:"minecraft:item_display",Tags:["exp.segment_display"]}\
    ],\
}

execute as @n[type=minecraft:armor_stand,tag=exp.rocket_segment.new,distance=..0.01] run function expansion:vehicles/rocket_segment/place/setup

tag @s remove exp.vehicle_segment

return 1