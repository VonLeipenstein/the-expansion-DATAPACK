# >>> generated function callers >>>
# Callers for expansion:spacesuits/actionbar/oxygen_bar
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/actionbar/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Check if the suit even has an oxygen tank to begin with
# If not, draw the outline of the oxygen bar
execute unless score #suit exp.oxygen_max matches 1.. \
        run return run data modify storage expansion:temp actionbar.oxygen set value \
        [\
            {text:"﬇",font:"expansion:oxygen_bar",bold:false,color:"white",shadow_color:0},\
            {text:"﬊ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬋ﬆ"},\
            {text:"﬌"},\
        ]

# If a tank is present, set the oxygen bar to the base empty state
data modify storage expansion:temp actionbar.oxygen set value \
[\
    {text:"﬇",font:"expansion:oxygen_bar",bold:false,color:"white",shadow_color:0},\
    {text:"ﬀ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬁ‌ﬆ"},\
    {text:"ﬂ‌"},\
]

# Color in pieces of the oxygen bar based on the tanks percentage
execute if score @s exp.oxygen_percent matches 1.. run data modify storage expansion:temp actionbar.oxygen[1].text set value "﬍ﬆ"
execute if score @s exp.oxygen_percent matches 6.. run data modify storage expansion:temp actionbar.oxygen[1].text set value "ﬃﬆ"
execute if score @s exp.oxygen_percent matches 11.. run data modify storage expansion:temp actionbar.oxygen[2].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 16.. run data modify storage expansion:temp actionbar.oxygen[2].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 21.. run data modify storage expansion:temp actionbar.oxygen[3].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 26.. run data modify storage expansion:temp actionbar.oxygen[3].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 31.. run data modify storage expansion:temp actionbar.oxygen[4].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 36.. run data modify storage expansion:temp actionbar.oxygen[4].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 41.. run data modify storage expansion:temp actionbar.oxygen[5].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 46.. run data modify storage expansion:temp actionbar.oxygen[5].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 51.. run data modify storage expansion:temp actionbar.oxygen[6].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 56.. run data modify storage expansion:temp actionbar.oxygen[6].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 61.. run data modify storage expansion:temp actionbar.oxygen[7].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 66.. run data modify storage expansion:temp actionbar.oxygen[7].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 71.. run data modify storage expansion:temp actionbar.oxygen[8].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 76.. run data modify storage expansion:temp actionbar.oxygen[8].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 81.. run data modify storage expansion:temp actionbar.oxygen[9].text set value "﬎ﬆ"
execute if score @s exp.oxygen_percent matches 86.. run data modify storage expansion:temp actionbar.oxygen[9].text set value "ﬄﬆ"
execute if score @s exp.oxygen_percent matches 91.. run data modify storage expansion:temp actionbar.oxygen[10].text set value "﬏"
execute if score @s exp.oxygen_percent matches 96.. run data modify storage expansion:temp actionbar.oxygen[10].text set value "ﬅ"