# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/engines/place
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/launch_pad/interaction/place_rocket_engines (1 caller) [WARN side/down 4]
# - function expansion:blocks/rocket_parts/rightclick (1 caller) [OK above +1]
# <<< generated function callers <<<

# can only be placed on top of the launch pad
execute on vehicle unless entity @s[tag=exp.launch_pad] as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/try_place_rocket_part
execute if function expansion:blocks/launch_pad/occupied as @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launch_pad_occupied

summon minecraft:item_display ~ ~ ~ \
{\
    Tags:["exp.rocket_part","exp.rocket_part.new",exp.rocket_bottom,"exp.block","smithed.block"],\
    Passengers:[{id:"minecraft:interaction",Tags:["exp.rocketpart_rcdet"],width:2.5,height:2.5,response:1b}],\
    item:{\
        id:"minecraft:carrot_on_a_stick",\
        count:1,\
        components:{"minecraft:custom_data":{exp_item:{name:"rocket_bottom"}},"minecraft:item_model":"expansion:vehicles/rocket",custom_model_data:{strings:["bottom"]}}\
    }\
}

execute as @n[type=item_display,tag=exp.rocket_part.new,distance=..0.01] run function expansion:blocks/rocket_parts/engines/setup
