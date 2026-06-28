# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/destination
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/main (1 caller) [OK same-folder]
# <<< generated function callers <<<
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #earth exp.gravity_id in minecraft:overworld store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #moon exp.gravity_id in expansion:moon store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #mars exp.gravity_id in expansion:mars store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #venus exp.gravity_id in expansion:venus store result score #destination exp.gravity run function expansion:mechanics/gravity/get_score

scoreboard players operation #destination_whole exp.gravity = #destination exp.gravity
scoreboard players operation #destination_decimal exp.gravity = #destination exp.gravity
execute store result score #destination_whole exp.gravity run scoreboard players operation #destination_whole exp.gravity /= #100 exp.const
execute store result score #destination_decimal exp.gravity run scoreboard players operation #destination_decimal exp.gravity %= #100 exp.const

data modify storage expansion:temp launchpad.destination set value \
[\
    {text:"                               \n"},\
    [\
        {text:""}\
    ],\
    {text:"\n\n"},\
    [\
        {text:"\n"}\
    ],\
    {text:"\n\n"},\
    [\
        {text:"\n"}\
    ],\
    {text:"\n\n"}\
]

# create a text storage
data modify storage expansion:temp launchpad.destination[1] set value \
[\
    {text:"                               \n"},\
    [\
        {text:"Gravity"},\
        {text:" = "},\
        [\
            {text:""},\
            {score:{name:"#destination_whole",objective:"exp.gravity"}},\
            {text:"."},\
            {score:{name:"#destination_decimal",objective:"exp.gravity"}}\
        ]\
    ]\
]

execute if score #destination exp.weight matches 0.. run data modify storage expansion:temp launchpad.destination[3] set value \
[\
    [\
        {text:""},\
        {text:"Rocket Weight",underlined:false},\
        {text:" = "},\
        {score:{name:"#destination",objective:"exp.weight"},bold:true},\
        {text:"\n"},\
        {text:"Mass x Gravity",italic:true,color:"dark_gray"}\
    ]\
]

execute if score #destination_required exp.fuel_level matches 0.. run data modify storage expansion:temp launchpad.destination[5] set value \
[\
    [\
        {text:""},\
        {text:"Launch Cost",underlined:false},\
        {text:" = "},\
        {score:{name:"#destination_required",objective:"exp.fuel_level"},bold:true},\
        {text:"\n"},\
        {text:"Weight / Efficiency",italic:true,color:"dark_gray"}\
    ]\
]

execute on passengers if entity @s[tag=exp.rocket_destination] run data modify entity @s text set from storage expansion:temp launchpad.destination

# Set the destination planet title
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #earth exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_title] run data modify entity @s text.extra[2] set value {text:"Earth",bold:true,underlined:true,color:"green"}
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #moon exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_title] run data modify entity @s text.extra[2] set value {text:"The Moon",bold:true,underlined:true,color:"gray"}
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #mars exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_title] run data modify entity @s text.extra[2] set value {text:"Mars",bold:true,underlined:true,color:"red"}
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #venus exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_title] run data modify entity @s text.extra[2] set value {text:"Venus",bold:true,underlined:true,color:"gold"}

# Set the destination planet sprite
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #earth exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5MTk2YjMzMGM2Yjg5NjJmMjNhZDU2MjdmYjZlY2NlNDcyZWFmNWM5ZDQ0Zjc5MWY2NzA5YzdkMGY0ZGVjZSJ9fX0="}]}}]
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #moon exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}]
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #mars exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM3ODU3ZTE2OWVkMzdiMjQ4OTVjM2ZkZTQyNjJkYWU2ZTg3NDI4NjFlYjczZWRhMTU0M2NiNGMwM2E2N2UzIn19fQ=="}]}}]
execute on passengers if entity @s[tag=exp.pad_link] on origin if score @s exp.destination = #venus exp.gravity_id on passengers if entity @s[tag=exp.control_link] on origin on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGVmMTQ3ZGRjOTA4ZTY4MjVjMjI5OTk3YWE1Mjk3NjFmNTE2OTFhMTFjOTU1MTI5YTIzMzYzMmQ1NTQ4NzVlIn19fQ=="}]}}]