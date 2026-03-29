# create a text storage
data modify storage expansion:temp destination set value \
[\
{text:""},\
]

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination

scoreboard players reset #temp exp.dimension
