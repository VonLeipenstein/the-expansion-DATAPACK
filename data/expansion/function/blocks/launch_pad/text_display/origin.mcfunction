# create a text storage
data modify storage expansion:temp origin set value \
[\
{text:""},\
{text:"The Moon\n",bold:true,color:"gray"},\
{text:"Gravity: "},\
[{score:{name:"#origin_gravity_whole",objective:"exp.gravity"}},{text:"."},{score:{name:"#origin_gravity_decimal",objective:"exp.gravity"}}],\
{text:"\n\nRocket Weight: "},\
{score:{name:"#origin",objective:"exp.weight"}},\
{text:"\nLaunch Cost: "},\
{score:{name:"#origin_required",objective:"exp.fuel_level"}},\
{text:"\n"},\
]

execute if dimension minecraft:overworld run data modify storage expansion:temp origin[1] set value {text:"Earth\n",bold:true,color:"green"}
execute if dimension expansion:moon run data modify storage expansion:temp origin[1] set value {text:"The Moon\n",bold:true,color:"gray"}
execute if dimension expansion:mars run data modify storage expansion:temp origin[1] set value {text:"Mars\n",bold:true,color:"red"}
execute if dimension expansion:venus run data modify storage expansion:temp origin[1] set value {text:"Venus\n",bold:true,color:"gold"}

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp origin