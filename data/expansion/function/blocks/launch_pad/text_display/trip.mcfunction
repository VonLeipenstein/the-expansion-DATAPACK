# create a text storage
data modify storage expansion:temp trip set value \
[\
{text:"Plan your journey:\n\n"},\
{score:{name:"#trip_required",objective:"exp.fuel_level"}},\
{text:"\n---------->\n"},\
{text:"\n<----------\n"},\
{score:{name:"#trip_required",objective:"exp.fuel_level"}},\
{text:""},\
]

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp trip