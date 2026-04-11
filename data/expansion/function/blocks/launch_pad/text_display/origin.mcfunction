# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/origin
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# create a text storage
data modify storage expansion:temp launchpad.origin set value \
[\
    {text:"                               \n"},\
    [\
        {text:"Gravity"},\
        {text:" = "},\
        [\
            {text:""},\
            {score:{name:"#origin_whole",objective:"exp.gravity"}},\
            {text:"."},\
            {score:{name:"#origin_decimal",objective:"exp.gravity"}},\
        ],\
    ],\
    {text:"\n\n"},\
    [\
        {text:""},\
        {text:"Rocket Weight",underlined:false},\
        {text:" = "},\
        {score:{name:"#origin",objective:"exp.weight"},bold:true},\
        {text:"\n"},\
		{text:"Mass x Gravity",italic:true,color:"dark_gray"},\
    ],\
    {text:"\n\n"},\
    [\
        {text:""},\
        {text:"Launch Cost",underlined:false},\
        {text:" = "},\
        {score:{name:"#origin_required",objective:"exp.fuel_level"},bold:true},\
        {text:"\n"},\
		{text:"Weight / Efficiency",italic:true,color:"dark_gray"},\
    ],\
    {text:"\n\n"}\
]

# set the origin planet title
execute if dimension minecraft:overworld on passengers if entity @s[tag=exp.rocket_origin_title] run data modify entity @s text.extra[2] set value {text:"Earth",bold:true,underlined:true,color:"green"}
execute if dimension expansion:moon on passengers if entity @s[tag=exp.rocket_origin_title] run data modify entity @s text.extra[2] set value {text:"The Moon",bold:true,underlined:true,color:"gray"}
execute if dimension expansion:mars on passengers if entity @s[tag=exp.rocket_origin_title] run data modify entity @s text.extra[2] set value {text:"Mars",bold:true,underlined:true,color:"red"}
execute if dimension expansion:venus on passengers if entity @s[tag=exp.rocket_origin_title] run data modify entity @s text.extra[2] set value {text:"Venus",bold:true,underlined:true,color:"gold"}

# Set the origin planet sprite
execute if dimension minecraft:overworld on passengers if entity @s[tag=exp.rocket_origin_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5MTk2YjMzMGM2Yjg5NjJmMjNhZDU2MjdmYjZlY2NlNDcyZWFmNWM5ZDQ0Zjc5MWY2NzA5YzdkMGY0ZGVjZSJ9fX0="}]}}]
execute if dimension expansion:moon on passengers if entity @s[tag=exp.rocket_origin_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}]
execute if dimension expansion:mars on passengers if entity @s[tag=exp.rocket_origin_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM3ODU3ZTE2OWVkMzdiMjQ4OTVjM2ZkZTQyNjJkYWU2ZTg3NDI4NjFlYjczZWRhMTU0M2NiNGMwM2E2N2UzIn19fQ=="}]}}]
execute if dimension expansion:venus on passengers if entity @s[tag=exp.rocket_origin_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGVmMTQ3ZGRjOTA4ZTY4MjVjMjI5OTk3YWE1Mjk3NjFmNTE2OTFhMTFjOTU1MTI5YTIzMzYzMmQ1NTQ4NzVlIn19fQ=="}]}}]