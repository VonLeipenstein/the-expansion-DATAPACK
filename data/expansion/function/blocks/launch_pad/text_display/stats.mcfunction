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
        {text:"",color:"green"},\
        {text:"Mass: "},\
        {score:{name:"#stat",objective:"exp.mass"},bold:true}\
    ],\
    {text:"\n"},\
    [\
        {text:"",color:"green"},\
        {text:"Thrust: "},\
        {score:{name:"#stat",objective:"exp.engine_thrust"},bold:true}\
    ],\
    {text:"\n"},\
    [\
        {text:"",color:"green"},\
        {text:"Efficiency: "},\
        [\
            {text:"",bold:true},\
            {score:{name:"#whole",objective:"exp.engine_efficiency"}},\
            {text:"."},\
            {score:{name:"#decimal",objective:"exp.engine_efficiency"}}\
        ]\
    ],\
    {text:"\n"},\
    [\
        {text:"",color:"green"},\
        {text:"Capacity: "},\
        {score:{name:"#stat",objective:"exp.fuel_max"},bold:true}\
    ],\
    {text:"\n----------------\n"},\
    [\
        {text:""},\
        {text:"Launch Ready: "},\
        {text:"✔",color:"green",bold:true},\
        {text:"\n"},\
        {text:"Return Ready: "},\
        {text:"✔",color:"green",bold:true},\
    ],\
    {text:"\n----------------\n"},\
    {text:"\n\n\n\n\n\n\n"},\
    {text:"\n                     "},\
]

execute unless predicate expansion:passengers/rocket_segment run return run data modify storage expansion:temp launchpad.stats set value \
[\
    {text:"No Active Rocket\n\n",underlined:true},\
    {text:"Place a Rocket\nSegment to start\nbuilding your \nRocket!\n\n\n\n\n\n\n",underlined:false}\
]