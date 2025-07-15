# show titles
data merge storage expansion:temp {\
    actionbar:{\
        oxygen:[\
            {text:"﬇",font:"expansion:oxygen_bar",bold:false,color:"aqua",shadow_color:0},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈ﬆ"},\
            {text:"﬈"},\
        ],\
        integrity:[\
            [{text:"",font:"expansion:actionbar_icons",color:"green"},{text:"＄",font:"expansion:actionbar_icons",shadow_color:0,bold:false}],\
            [{text:"﬉",font:"expansion:actionbar_icons",color:"green"},{text:"％",font:"expansion:actionbar_icons",shadow_color:0,bold:false}],\
            [{text:"﬉",font:"expansion:actionbar_icons",color:"green"},{text:"＆",font:"expansion:actionbar_icons",shadow_color:0,bold:false}],\
            [{text:"﬉",font:"expansion:actionbar_icons",color:"green"},{text:"＇",font:"expansion:actionbar_icons",shadow_color:0,bold:false}]\
        ]\
    }\
}

## Oxygen Bar
execute if predicate expansion:armor/all run function expansion:spacesuits/actionbar/oxygen_bar

## Helmet
execute if predicate expansion:armor/head run function expansion:spacesuits/actionbar/helmet

## Chestpiece
execute if predicate expansion:armor/chest run function expansion:spacesuits/actionbar/chestpiece

## Leggings
execute if predicate expansion:armor/legs run function expansion:spacesuits/actionbar/leggings

## Boots
execute if predicate expansion:armor/feet run function expansion:spacesuits/actionbar/boots

## Final title
title @s actionbar [{text:""},{storage:"expansion:temp",nbt: "actionbar.oxygen", interpret: true},{text:""},{storage:"expansion:temp",nbt: "actionbar.integrity", interpret: true}]