# create a text storage
data modify storage expansion:temp destination set value \
[\
{text:""},\
{score:{name:"#temp",objective:"exp.fuel_consumption"}},\
{text:"\n------->\n",color:"green"},\
{text:"\n<-------\n",color:"red"},\
{score:{name:"#temp",objective:"exp.fuel_consumption"}},\
]

scoreboard players operation #target exp.dimension = @s exp.dimension
execute store result score #temp exp.fuel_consumption run function expansion:vehicles/rocket_segment/fuel/table

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination

scoreboard players reset #temp exp.fuel_consumption
scoreboard players reset #temp exp.dimension
