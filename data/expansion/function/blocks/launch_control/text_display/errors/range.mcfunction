data modify storage expansion:temp launchpad.stats[7] set value {text:"Destination\nout of range\n\nClass 2 Rocket\nEngines generally\nhave more range\n\n\n\n",color:"red"}

data modify storage expansion:temp launchpad.stats[3][2].color set value "red"

data modify storage expansion:temp launchpad.trip[1] set value {text:""}
data modify storage expansion:temp launchpad.trip[2] set value {text:"Destination\nout of range\n\n\n\n\n\n\n\n\n"}
data modify storage expansion:temp launchpad.trip[3] set value {text:""}

data modify storage expansion:temp launchpad.destination set value \
[\
    {text:"                               \n"},\
    [\
        {text:"Gravity"},\
        {text:" = "},\
        [\
            {text:"",bold:true},\
            {score:{name:"#destination_whole",objective:"exp.gravity"}},\
            {text:"."},\
            {score:{name:"#destination_decimal",objective:"exp.gravity"}}\
        ],\
        {text:"\n"},\
        [\
            {text:""},\
            {text:"Distance",underlined:false},\
            {text:" = "},\
            {score:{name:"#destination",objective:"exp.distance"},bold:true,color:"red"},\
        ]\
    ],\
    {text:"\n\n"},\
    [\
        {text:"     "},\
        {text:"Out of range",color:"red"},\
        {text:"\n\n\n\n\n"}\
    ]\
]