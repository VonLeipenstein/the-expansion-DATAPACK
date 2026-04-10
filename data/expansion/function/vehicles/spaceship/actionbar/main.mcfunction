# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/actionbar/main
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:vehicles/spaceship/enter/pilot (1 caller) [WARN side/down 2]
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +1]
# <<< generated function callers <<<

# update the speed percentage when the speed changes
scoreboard players set #offset exp.math 10
scoreboard players operation #total exp.math = @s exp.speed_max
scoreboard players operation #total exp.math -= #offset exp.math
execute store result score #temp exp.speed run function expansion:vehicles/spaceship/propulsion/speed_percentage

# prepare the actionbar text in storage
data merge storage expansion:temp {\
    actionbar:{\
        fuel:[\
            {text:"‐",font:"expansion:actionbar_icons",bold:false,color:"white",shadow_color:0},\
            {text:"ﰀﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰁﬆ"},\
            {text:"ﰂ"},\
        ],\
        speed:[\
            {text:"‒",font:"expansion:actionbar_icons",bold:false,color:"white"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
            {text:"ﴁ‑"},\
        ]\
    }\
}

function expansion:vehicles/spaceship/actionbar/fuel_bar

function expansion:vehicles/spaceship/actionbar/speed_bar

# display the title
title @p[tag=exp.inside_spaceship] actionbar [{storage:"expansion:temp",nbt:"actionbar.speed",interpret:true,bold:false},{storage:"expansion:temp",nbt:"actionbar.fuel",interpret:true,bold:false}]