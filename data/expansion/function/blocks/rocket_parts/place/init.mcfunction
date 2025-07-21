# Rocket bottom can only be placed on top of an obsidian launchpad

execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_bottom run summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_bottom,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:2,height:2,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_bottom"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["bottom"]}}\
    }\
}

execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_cockpit run summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_cockpit,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:2,height:2,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_cockpit"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["cockpit"]}}\
    }\
}

execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_top run summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_top,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:2,height:2,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_top"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["top"]}}\
    }\
}

execute as @n[type=item_display,tag=exp.rocket_part.new,distance=..0.01] run function expansion:blocks/rocket_parts/place/setup