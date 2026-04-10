# >>> generated function callers >>>
# Callers for expansion:vehicles/cargo_rocket/summon/tier2/init
# Total callers: 0
# None found
# <<< generated function callers <<<

summon minecraft:armor_stand ~ ~ ~ {\
    Silent:1b,\
    Marker:0b,\
    NoGravity:0b,\
    Invisible:1b,\
    Invulnerable:1b,\
    Tags:[\
        "exp.new_vehicle",\
        "exp.cargo_rocket",\
        "exp.vehicle",\
        "smithed.block"\
    ],\
    attributes:[{id:"minecraft:scale",base:0.3}],\
    Passengers:[\
        {\
            id:"minecraft:interaction",\
            Tags:[\
                "exp.cargo_rocket_rcdet",\
                "smithed.block"\
            ],\
            width:0.8f,\
            height:2f,\
            response:0b\
        },\
        {\
            id:"minecraft:item_display",\
            item:{\
                id:"minecraft:carrot_on_a_stick",\
                count:1,\
                components:{\
                    "minecraft:custom_data":{Unbreakable:1b,cargo_rocket:1b},\
                    "minecraft:item_model":"expansion:vehicles/cargo_rocket"\
                }\
            },\
            transformation:{\
                scale:[1.7,1.7,1.7],\
                translation:[0.0,2.0,0.0],\
                left_rotation:[0,0,0,1],\
                right_rotation:[0,0,0,1]\
            }\
        },\
        {\
            id:"chest_minecart",\
        }\
    ],\
    DisabledSlots:2039583\
}