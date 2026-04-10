# >>> generated function callers >>>
# Callers for expansion:vehicles/return_capsule/summon_return_capsule
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/return_capsule/summon/init (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

summon minecraft:armor_stand ~ ~ ~ {\
    Silent:1b,\
    Marker:0b,\
    NoGravity:0b,\
    Invisible:1b,\
    Invulnerable:1b,\
    Tags:[\
        "exp.return_capsule",\
        "exp.vehicle",\
        "smithed.block"\
    ],\
    attributes:[{id:"minecraft:scale",base:0}],\
    Passengers:[\
        {\
            id:"minecraft:interaction",\
            Tags:[\
                "exp.capsule_rcdet",\
                "smithed.block"\
            ],\
            width:2f,\
            height:2f,\
            response:0b\
        },\
        {\
            id:"minecraft:item_display",\
            item:{\
                id:"minecraft:carrot_on_a_stick",\
                count:1,\
                components:{\
                    "minecraft:custom_data":{Unbreakable:1b,return_capsule:1b},\
                    "minecraft:item_model":"expansion:vehicles/return_capsule"\
                }\
            },\
            transformation:{\
                scale:[2.7,2.7,2.7],\
                translation:[0.0,1.4,0.0],\
                left_rotation:[0,0,0,1],\
                right_rotation:[0,0,0,1]\
            }\
        }\
    ],\
    DisabledSlots:2039583\
}
