# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/stats
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on vehicle unless predicate expansion:passengers/rocket_segment on passengers if entity @s[tag=exp.rocket_diagnostics] run return run data modify entity @s text set value \
[\
{text:"No Active Rocket\n\n",underlined:true},\
{text:"Place a Rocket\nSegment to start\nbuilding your \nRocket!\n\n\n\n\n\n\n",underlined:false}\
]

# prepare a text storage
data modify storage expansion:temp diagnostics set value \
[\
{text:""},\
{text:"\nRocket Mass: "},\
{score:{name:"#stat",objective:"exp.mass"},bold:true,color:"gray"},\
{text:"\nThrust: "},\
{score:{name:"#stat",objective:"exp.engine_thrust"},bold:true,color:"aqua"},\
{text:"\nEfficiency: "},\
[{text:"",bold:true,color:"yellow"},{score:{name:"#whole",objective:"exp.engine_efficiency"}},{text:"."},{score:{name:"#decimal",objective:"exp.engine_efficiency"}}],\
{text:"\nFuel Capacity: "},\
{score:{name:"#stat",objective:"exp.fuel_level"},bold:true,color:"blue"},\
{text:"\n\nWarnings:\n",bold:true,underlined:true,color:"red"},\
{text:"None, \n",color:"green",bold:true},\
{text:"\nReady to launch!"},\
{text:"\n\n\n\n                     "},\
]

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp diagnostics

# reset temp scores
scoreboard players reset #top exp.hold_count
scoreboard players reset #body exp.hold_count
scoreboard players reset #bottom exp.hold_count
scoreboard players reset #fuel exp.hold_count