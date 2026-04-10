scoreboard players operation #origin_total exp.fuel_level = #origin_required exp.fuel_level
scoreboard players operation #origin_total exp.fuel_level += #trip_required exp.fuel_level

scoreboard players operation #destination_total exp.fuel_level = #destination_required exp.fuel_level
scoreboard players operation #destination_total exp.fuel_level += #trip_required exp.fuel_level

# create a text storage
data modify storage expansion:temp trip set value \
[\
{text:""},\
{text:"Distance Cost: "},\
{score:{name:"#trip_required",objective:"exp.fuel_level"}},\
{text:"\n\nEarth","color":"green",bold:true,underlined:true},{text:" -> "},{text:"Moon\n",color:"gray",bold:true,underlined:true},\
{score:{name:"#origin_required",objective:"exp.fuel_level"},color:"blue"},\
{text:" + "},\
{score:{name:"#trip_required",objective:"exp.fuel_level"}},\
{text:" = "},\
{score:{name:"#origin_total",objective:"exp.fuel_level"}},\
{text:"\n\n"},\
{text:"Moon","color":"gray",bold:true,underlined:true},{text:" -> "},{text:"Earth\n",color:"green",bold:true,underlined:true},\
{score:{name:"#destination_required",objective:"exp.fuel_level"},color:"blue"},\
{text:" + "},\
{score:{name:"#trip_required",objective:"exp.fuel_level"}},\
{text:" = "},\
{score:{name:"#destination_total",objective:"exp.fuel_level"}},\
{text:"\n\nRequired Fuel:\n",underlined:true},\
{score:{name:"#origin_total",objective:"exp.fuel_level"}},\
{text:"\n\nRecommended Fuel:\n",underlined:true},\
{score:{name:"#origin_total",objective:"exp.fuel_level"}},\
{text:" + "},\
{score:{name:"#destination_total",objective:"exp.fuel_level"}},\
{text:" = "},\
{score:{name:"#total_required",objective:"exp.fuel_level"}},\
{text:"\n                        "},\
]



# merge the scores with the text display
data modify entity @s text set from storage expansion:temp trip

scoreboard players reset #origin_required exp.fuel_level
scoreboard players reset #destination_required exp.fuel_level