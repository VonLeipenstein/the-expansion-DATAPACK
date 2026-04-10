# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/text_display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate the fuel percentage
function expansion:utilities/fuel_percentage

# calculate the altitude
execute at @s store result score #temp exp.y run function expansion:utilities/altitude/cast

# launch checklist
execute if predicate expansion:periodic/10 run function expansion:vehicles/rocket/launch_checklist

scoreboard players operation #temp exp.fuel_percentage = @s exp.fuel_percentage

execute on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display3] run data modify entity @s text set value \
[\
{text:""},\
{text:"Altitude: ",color:"green",bold:true},\
{score:{name:"#temp",objective:"exp.y"}},\
{text:"\n\nFuel: ",color:"gold",bold:true},\
{score:{name:"#temp",objective:"exp.fuel_percentage"}},\
{text:"%\n\n\n"}\
]

scoreboard players reset #temp exp.y
scoreboard players reset #temp exp.fuel_percentage