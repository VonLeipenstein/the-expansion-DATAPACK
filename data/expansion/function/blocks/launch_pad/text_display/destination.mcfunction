# create a text storage
data modify storage expansion:temp destination set value \
[\
{text:""},\
{text:"The Moon\n",bold:true,color:"gray"},\
{text:"Gravity: "},\
[{score:{name:"#destination_gravity_whole",objective:"exp.gravity"}},{text:"."},{score:{name:"#destination_gravity_decimal",objective:"exp.gravity"}}],\
{text:"\n\nRocket Weight: "},\
{score:{name:"#destination",objective:"exp.weight"}},\
{text:"\nLaunch Cost: "},\
{score:{name:"#destination_required",objective:"exp.fuel_level"}},\
{text:"\n"},\
]

execute on vehicle if score @s exp.hold_value matches 0 run data modify storage expansion:temp destination[1] set value {text:"Earth\n",bold:true,color:"green"}
execute on vehicle if score @s exp.hold_value matches 1 run data modify storage expansion:temp destination[1] set value {text:"The Moon\n",bold:true,color:"gray"}
execute on vehicle if score @s exp.hold_value matches 2 run data modify storage expansion:temp destination[1] set value {text:"Mars\n",bold:true,color:"red"}
execute on vehicle if score @s exp.hold_value matches 3 run data modify storage expansion:temp destination[1] set value {text:"Venus\n",bold:true,color:"gold"}

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination