# If not, draw the outline of the oxygen bar
execute on passengers if entity @s[tag=exp.fuel_slot] unless items entity @s contents * \
        run return run data modify storage expansion:temp actionbar.fuel set value \
        [\
            {text:"‐",font:"expansion:lacrymae_bar",bold:false,color:"white",shadow_color:0},\
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
data modify storage expansion:temp actionbar.fuel set value \
[\
    {text:"‐",font:"expansion:lacrymae_bar",bold:false,color:"white",shadow_color:0},\
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
execute if score @s exp.fuel_percentage matches 1.. run data modify storage expansion:temp actionbar.fuel[1].text set value "‐ﰍﬆ"
execute if score @s exp.fuel_percentage matches 6.. run data modify storage expansion:temp actionbar.fuel[1].text set value "ﬃﬆ"
execute if score @s exp.fuel_percentage matches 11.. run data modify storage expansion:temp actionbar.fuel[2].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 16.. run data modify storage expansion:temp actionbar.fuel[2].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 21.. run data modify storage expansion:temp actionbar.fuel[3].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 26.. run data modify storage expansion:temp actionbar.fuel[3].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 31.. run data modify storage expansion:temp actionbar.fuel[4].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 36.. run data modify storage expansion:temp actionbar.fuel[4].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 41.. run data modify storage expansion:temp actionbar.fuel[5].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 46.. run data modify storage expansion:temp actionbar.fuel[5].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 51.. run data modify storage expansion:temp actionbar.fuel[6].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 56.. run data modify storage expansion:temp actionbar.fuel[6].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 61.. run data modify storage expansion:temp actionbar.fuel[7].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 66.. run data modify storage expansion:temp actionbar.fuel[7].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 71.. run data modify storage expansion:temp actionbar.fuel[8].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 76.. run data modify storage expansion:temp actionbar.fuel[8].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 81.. run data modify storage expansion:temp actionbar.fuel[9].text set value "﬎ﬆ"
execute if score @s exp.fuel_percentage matches 86.. run data modify storage expansion:temp actionbar.fuel[9].text set value "ﬄﬆ"
execute if score @s exp.fuel_percentage matches 91.. run data modify storage expansion:temp actionbar.fuel[10].text set value "﬏"
execute if score @s exp.fuel_percentage matches 96.. run data modify storage expansion:temp actionbar.fuel[10].text set value "ﬅ"