# can only be placed on top of the cockpit
execute on vehicle unless entity @s[tag=exp.rocket_cockpit] run return run say place on cockpit
execute if function expansion:blocks/launch_pad/has_passenger run return run say occupied

summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_top,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:2,height:2,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_top"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["top"]}}\
    }\
}

execute as @n[type=item_display,tag=exp.rocket_part.new,distance=..0.01] run function expansion:blocks/rocket_parts/top/setup
