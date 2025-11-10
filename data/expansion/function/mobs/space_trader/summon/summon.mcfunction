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