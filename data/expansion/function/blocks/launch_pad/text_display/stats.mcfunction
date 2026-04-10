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
{text:"\n----------------\n"},\
{text:"Rocket Mass: "},\
{score:{name:"#stat",objective:"exp.mass"},bold:true,color:"white"},\
{text:"\nThrust: "},\
{score:{name:"#stat",objective:"exp.engine_thrust"},bold:true,color:"white"},\
{text:"\nEfficiency: "},\
[{text:"",bold:true,color:"white"},{score:{name:"#whole",objective:"exp.engine_efficiency"}},{text:"."},{score:{name:"#decimal",objective:"exp.engine_efficiency"}}],\
{text:"\nFuel Capacity: "},\
{score:{name:"#stat",objective:"exp.fuel_max"},bold:true,color:"white"},\
{text:"\n----------------\n"},\
[\
    {text:""},\
    {text:"None",color:"green"},\
],\
{text:"\n\n\n\n\n                     "},\
]

# WARNINGS
# not enough fuel for retour
execute if score #stat exp.fuel_level < #total_required exp.fuel_level run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Warning!\n",color:"gold",underlined:true},{"text":"Retour not\npossible with\ncurrent fuel",color:"gold"}]
# not enough fuel capacity for retour
execute if score #stat exp.fuel_max < #total_required exp.fuel_level run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Warning!\n",color:"gold",underlined:true},{"text":"Insufficient\nFuel Capacity\nFor Retour",color:"gold"}]
# if thrust is sufficient for launch but not return
execute if score #destination exp.weight > #stat exp.engine_thrust run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Warning!\n",color:"gold",underlined:true},{"text":"Rocket will be\ntoo heavy\nto return",color:"gold"}]

# ERRORS
# not enough fuel for launch
execute if score #stat exp.fuel_level < #origin_total exp.fuel_level run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"Insufficient Fuel",color:"red"}]
# not enough fuel capacity for launch
execute if score #stat exp.fuel_max < #origin_total exp.fuel_level run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"Insufficient\nFuel Capacity\nFor Launch",color:"red"}]
# if thrust is insufficient for launch
execute if score #origin exp.weight > #stat exp.engine_thrust run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"Rocket is too\nheavy to launch",color:"red"}]

# if thrust is 0, say engine missing
execute unless score #top exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"A Rocket requires\na Nose Cone.",color:"red"}]
execute unless score #fuel exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"A Rocket requires\na Fuel Tank",color:"red"}]
execute unless score #body exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"Add at least one\nBody Segment",color:"red"}]
execute unless score #bottom exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[11][1] set value [{text:""},{text:"Error!\n",color:"red",underlined:true},{"text":"A Rocket requires\n an Engine Segment",color:"red"}]

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp diagnostics