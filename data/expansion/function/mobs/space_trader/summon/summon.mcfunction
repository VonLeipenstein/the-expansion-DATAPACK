# >>> generated function callers >>>
# Callers for expansion:mobs/space_trader/summon/summon
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:_commands/summon/san_holo (1 caller) [WARN side/down 5]
# - function expansion:mobs/space_trader/summon/from_spawner (1 caller) [OK same-folder]
# <<< generated function callers <<<

summon minecraft:villager ~ ~ ~ {\
    Tags:[\
        "exp.space_trader",\
        "smithed.entity"\
    ],\
    CustomNameVisible:0b,\
    CustomName:{text:"San Holo"},\
    VillagerData:{\
        level:99,\
        profession:"minecraft:nitwit",\
        type:"minecraft:plains"\
    },\
    equipment:{\
        head:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:armor/trader_helmet"}}\
    },\
    Passengers:[{id:"minecraft:marker",Tags:["exp.mob_marker"]}]\
}

execute as @e[type=minecraft:villager,tag=exp.space_trader,distance=..0.1,limit=1] run function expansion:mobs/space_trader/setup