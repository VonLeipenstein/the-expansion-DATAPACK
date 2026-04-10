# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/summon/new_entity_stack
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/summon/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

summon minecraft:armor_stand ^ ^ ^ {\
    Silent:1b,\
    NoAI:1b,\
    Invulnerable:1b,\
    Invisible:1b,\
    Tags:[\
        "exp.mech",\
        "exp.new_vehicle",\
        "exp.vehicle",\
        "exp.moddable_vehicle",\
        "smithed.block"\
    ],\
    equipment:{head:{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}},\
    Passengers:[\
        {\
            id:"minecraft:marker",\
            Tags:["exp.mob_marker"]\
        },\
        {\
            id:"minecraft:marker",\
            Tags:["exp.movedir"]\
        },\
        {\
            id:"minecraft:marker",\
            Tags:["exp.left_arm_control","exp.mech_arm_controller"]\
        },\
        {\
            id:"minecraft:marker",\
            Tags:["exp.right_arm_control","exp.mech_arm_controller"]\
        },\
        {\
            id:"minecraft:armor_stand",\
            Tags:["exp.mech_seat"],\
            NoAI:1b,\
            Invisible:1b,\
            Silent:1b,\
            Invulnerable:1b,\
            attributes:[{id:scale,base:0.22}]\
        },\
        {\
            id:"minecraft:interaction",\
            Tags:["exp.mech_rcdet","exp.hitbox","smithed.block"],\
            width:1.5,\
            height:2f,\
            response:0b\
        },\
        {\
            id:snowball,\
            Tags:["exp.mech_targeter"],\
            NoGravity:1b,\
            Invulnerable:1b\
        },\
        {\
            id:snowball,\
            Tags:["exp.origin_link","exp.mech.bot_link"],\
            NoGravity:1b,Invulnerable:1b\
        },\
        {\
            id:snowball,\
            Tags:["exp.origin_link","exp.mech.bot_link"],\
            NoGravity:1b,\
            Invulnerable:1b\
        },\
        {\
            id:snowball,\
            Tags:["exp.origin_link","exp.mech.bot_link"],\
            NoGravity:1b,Invulnerable:1b\
        },\
        {\
            id:snowball,\
            Tags:["exp.origin_link","exp.mech.bot_link"],\
            NoGravity:1b,\
            Invulnerable:1b\
        },\
        {\
            id:snowball,\
            Tags:["exp.origin_link","exp.mech.bot_link"],\
            NoGravity:1b,\
            Invulnerable:1b\
        }\
    ]\
}
