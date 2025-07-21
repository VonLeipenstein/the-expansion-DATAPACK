# merge values with text displays
scoreboard players operation #input exp.math = @s exp.oxygen_lvl
scoreboard players operation #max exp.math = @s exp.oxygen_max
execute store result score @s exp.oxygen_percent run function expansion:utilities/percentage

scoreboard players operation #temp exp.oxygen_percent = @s exp.oxygen_percent
scoreboard players operation #temp exp.speed = @s exp.speed
execute on passengers if entity @s[tag=aj.buggy.root] on passengers if entity @s[tag=aj.buggy.node.text_display] run data modify entity @s text set value \
[\
{text:"",color:"white"},\
{text:"Speed:\n",color:"green"},\
{score:{name:"#temp",objective:"exp.speed"}},\
{text:"%"},\
{text:"\nOxygen:\n",color:"aqua"},\
{score:{name:"#temp",objective:"exp.oxygen_percent"}},\
{text:"%"}\
]