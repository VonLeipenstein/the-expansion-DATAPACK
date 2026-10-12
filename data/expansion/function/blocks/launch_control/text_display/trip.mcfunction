# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/trip
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# create a text storage
data modify storage expansion:temp launchpad.trip set value \
[\
    {text:""},\
    [\
        {text:"       ",color:"green"},\
        {score:{name:"#stat",objective:"exp.fuel_level"},bold:true},\
        {text:"/",color:"white","bold":true},\
        {text:"",color:"green"},\
        {score:{name:"#stat",objective:"exp.fuel_max"},bold:true}\
    ],\
    {text:"\n----------------\nLaunch Costs:\n\n"},\
    [\
        [\
            {text:""},\
            {text:"One-way: ",underlined:false},\
            {score:{name:"#origin_total",objective:"exp.fuel_level"},bold:true,color:"green"},\
            {text:"\n"}\
        ],\
        [\
            {text:"",color:dark_gray,italic:true},\
            [\
                {text:"Earth"},\
                {text:" → "},\
                {text:"Moon"}\
            ],\
            {text:"\n\n"},\
        ],\
        [\
            {text:""},\
            {text:"Return: ",underlined:false},\
            {score:{name:"#destination_total",objective:"exp.fuel_level"},bold:true,color:"green"},\
            {text:"\n"}\
        ],\
        [\
            {text:"",color:dark_gray,italic:true},\
            [\
                {text:"Moon"},\
                {text:" → "},\
                {text:"Earth"}\
            ],\
            {text:"\n\n"},\
        ],\
        [\
            {text:""},\
            {text:"Round-trip: ",underlined:false},\
            {score:{name:"#total_required",objective:"exp.fuel_level"},bold:true,color:"green"},\
            {text:"\n"}\
        ],\
        [\
            {text:"",color:dark_gray,italic:true},\
            [\
                {text:"Moon"},\
                {text:" ⇄ "},\
                {text:"Earth"}\
            ],\
        ],\
    ],\
    {text:"\n\n\n\n\n"},\
]


execute on passengers if entity @s[tag=exp.pad_link] on origin unless predicate expansion:passengers/rocket_segment run return run data modify storage expansion:temp launchpad.trip set value [{text:""}]

scoreboard players reset #temp exp.counter_1
execute if score #top exp.hold_count matches 1.. run scoreboard players add #temp exp.counter_1 1
execute if score #bottom exp.hold_count matches 1.. run scoreboard players add #temp exp.counter_1 1
execute unless score #temp exp.counter_1 matches 2 run return run data modify storage expansion:temp launchpad.trip set value \
[\
    {text:"Construct a valid\nRocket before\ncalculating fuel\nrequirements\nfor your trip\n\n\n\n\n\n\n\n\n\n\n",underlined:false}\
]

execute if score @s exp.destination = #earth exp.gravity_id run data modify storage expansion:temp destination set value {text:"Earth"}
execute if score @s exp.destination = #moon exp.gravity_id run data modify storage expansion:temp destination set value {text:"The Moon"}
execute if score @s exp.destination = #mars exp.gravity_id run data modify storage expansion:temp destination set value {text:"Mars"}
execute if score @s exp.destination = #venus exp.gravity_id run data modify storage expansion:temp destination set value {text:"Venus"}
execute if score @s exp.origin = #earth exp.gravity_id run data modify storage expansion:temp origin set value {text:"Earth"}
execute if score @s exp.origin = #moon exp.gravity_id run data modify storage expansion:temp origin set value {text:"The Moon"}
execute if score @s exp.origin = #mars exp.gravity_id run data modify storage expansion:temp origin set value {text:"Mars"}
execute if score @s exp.origin = #venus exp.gravity_id run data modify storage expansion:temp origin set value {text:"Venus"}

data modify storage expansion:temp launchpad.trip[3][2][1][0] set from storage expansion:temp origin
data modify storage expansion:temp launchpad.trip[3][2][1][2] set from storage expansion:temp destination
data modify storage expansion:temp launchpad.trip[3][6][1][0] set from storage expansion:temp destination
data modify storage expansion:temp launchpad.trip[3][6][1][2] set from storage expansion:temp origin
data modify storage expansion:temp launchpad.trip[3][10][1][0] set from storage expansion:temp origin
data modify storage expansion:temp launchpad.trip[3][10][1][2] set from storage expansion:temp destination

data remove storage expansion:temp destination
data remove storage expansion:temp origin
