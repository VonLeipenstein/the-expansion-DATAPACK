# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/stats
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# prepare a text storage
data modify storage expansion:temp launchpad.stats set value \
[\
    {text:""},\
    [\
        {text:""},\
        {text:"Mass: "},\
        {score:{name:"#stat",objective:"exp.mass"},bold:true,color:"green"},\
        {text:"\n"}\
    ],\
    [\
        {text:""},\
        {text:"Thrust: "},\
        {score:{name:"#stat",objective:"exp.engine_thrust"},bold:true,color:"green"},\
        {text:"\n"}\
    ],\
    [\
        {text:""},\
        {text:"Range: "},\
        {score:{name:"#stat",objective:"exp.max_range"},bold:true,color:"green"},\
        {text:"\n"}\
    ],\
    [\
        {text:""},\
        {text:"Efficiency: "},\
        [\
            {text:"",bold:true,color:"green"},\
            {score:{name:"#whole",objective:"exp.engine_efficiency"}},\
            {text:"."},\
            {score:{name:"#decimal",objective:"exp.engine_efficiency"}}\
        ],\
        {text:"\n"}\
    ],\
    [\
        {text:""},\
        {text:"Capacity: "},\
        {score:{name:"#stat",objective:"exp.fuel_max"},bold:true,color:"green"}\
    ],\
    {text:"\n----------------\n"},\
    {text:"\n\n\n\n\n\n\n\n\n"},\
    {text:"\n                     "},\
]

execute on passengers if entity @s[tag=exp.pad_link] on origin unless predicate expansion:passengers/rocket_segment run return run data modify storage expansion:temp launchpad.stats set value \
[\
    {text:"No Active Rocket\n\n",underlined:true},\
    {text:"Place a Rocket\nSegment to start\nbuilding your \nRocket!\n\n\n\n\n\n\n",underlined:false}\
]