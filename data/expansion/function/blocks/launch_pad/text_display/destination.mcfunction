# create a text storage
data modify storage expansion:temp destination set value \
[\
    {text:""},\
    {text:"The Moon",bold:true,underlined:true,color:"gray"},\
    [\
        {text:"\n"},\
        {text:"Gravity"},\
        {text:" = "},\
        [\
            {text:"",color:"light_purple"},\
            {score:{name:"#destination_whole",objective:"exp.gravity"}},\
            {text:"."},\
            {score:{name:"#destination_decimal",objective:"exp.gravity"}},\
        ],\
    ],\
    [\
        {text:"\n\n"},\
        {text:"Rocket Weight",underlined:true},\
        {text:"\n"},\
        [\
            {score:{name:"#stat",objective:"exp.mass"},color:"gray"},\
            {text:" x "},\
            [\
                {text:"",color:"light_purple"},\
                {score:{name:"#destination_whole",objective:"exp.gravity"}},\
                {text:"."},\
                {score:{name:"#destination_decimal",objective:"exp.gravity"}}\
            ],\
            {text:" ≈ "},\
            {score:{name:"#destination",objective:"exp.weight"},color:"gray"}\
        ]\
    ],\
    [\
        {text:"\n\n"},\
        {text:"Launch Cost",underlined:true},\
        {text:"\n"},\
        [\
            {score:{name:"#destination",objective:"exp.weight"},color:"gray"},\
            {text:" / "},\
            [\
                {text:"",color:"yellow"},\
                {score:{name:"#whole",objective:"exp.engine_efficiency"}},\
                {text:"."},\
                {score:{name:"#decimal",objective:"exp.engine_efficiency"}}\
            ],\
            {text:" ≈ "},\
            {score:{name:"#destination_required",objective:"exp.fuel_level"},color:"blue"}\
        ]\
    ],\
    {text:""},\
]

# set the destination planet title
execute on vehicle if score @s exp.hold_value matches 0 run data modify storage expansion:temp destination[1] set value {text:"Earth",bold:true,underlined:true,color:"green"}
execute on vehicle if score @s exp.hold_value matches 1 run data modify storage expansion:temp destination[1] set value {text:"The Moon",bold:true,underlined:true,color:"gray"}
execute on vehicle if score @s exp.hold_value matches 2 run data modify storage expansion:temp destination[1] set value {text:"Mars",bold:true,underlined:true,color:"red"}
execute on vehicle if score @s exp.hold_value matches 3 run data modify storage expansion:temp destination[1] set value {text:"Venus",bold:true,underlined:true,color:"gold"}

# Set the destination planet sprite
execute on vehicle if score @s exp.hold_value matches 0 on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5MTk2YjMzMGM2Yjg5NjJmMjNhZDU2MjdmYjZlY2NlNDcyZWFmNWM5ZDQ0Zjc5MWY2NzA5YzdkMGY0ZGVjZSJ9fX0="}]}}]
execute on vehicle if score @s exp.hold_value matches 1 on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}]
execute on vehicle if score @s exp.hold_value matches 2 on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM3ODU3ZTE2OWVkMzdiMjQ4OTVjM2ZkZTQyNjJkYWU2ZTg3NDI4NjFlYjczZWRhMTU0M2NiNGMwM2E2N2UzIn19fQ=="}]}}]
execute on vehicle if score @s exp.hold_value matches 3 on passengers if entity @s[tag=exp.rocket_destination_texture] run data modify entity @s text set value [{"player":{"hat":true,"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGVmMTQ3ZGRjOTA4ZTY4MjVjMjI5OTk3YWE1Mjk3NjFmNTE2OTFhMTFjOTU1MTI5YTIzMzYzMmQ1NTQ4NzVlIn19fQ=="}]}}]

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination