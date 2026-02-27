# can only be placed on top of the cockpit
execute on vehicle unless entity @s[tag=exp.rocket_cockpit] as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/try_place_rocket_part
execute if function expansion:blocks/launch_pad/has_passenger as @p[tag=exp.clicked] run return fail

summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_top,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:1.8,height:1.5,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_top"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["top"]}}\
    }\
}

execute as @n[type=item_display,tag=exp.rocket_part.new,distance=..0.01] run function expansion:blocks/rocket_parts/top/setup
