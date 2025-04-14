# copy armor to storage for less player nbt operations
function expansion:utilities/copy_armor_to_storage

# get resistance scores for each piece
function expansion:items/thermometer/get_resist_stats

# show titles
data merge storage expansion:temp {tellraw:{temperature:[{text:"Temperature Score: ",color:"dark_aqua"},{score:{name:"@s",objective:"exp.temperature"},color:"aqua"}],head:[{text:"Head Resistance: ",color:"gray"},{score:{name:"#head",objective:"exp.cold_resist"},color:"green"}],chest:[{text:"Chest Resistance: ",color:"gray"},{score:{name:"#chest",objective:"exp.cold_resist"},color:"green"}],legs:[{text:"Legs Resistance: ",color:"gray"},{score:{name:"#legs",objective:"exp.cold_resist"},color:"green"}],feet:[{text:"Feet Resistance: ",color:"gray"},{score:{name:"#feet",objective:"exp.cold_resist"},color:"green"}]}}

# change the storage based on the values
execute if score @s exp.temperature matches 1.. run function expansion:items/thermometer/heat_resist
execute if score @s exp.temperature matches ..-1 run function expansion:items/thermometer/cold_resist

# display the title
tellraw @s ["",{"storage":"expansion:temp","nbt": "tellraw.temperature", "interpret": true,bold: true},{text:"\n"},{"storage":"expansion:temp","nbt": "tellraw.head", "interpret": true},{text:"\n"},{"storage":"expansion:temp","nbt": "tellraw.chest", "interpret": true},{text:"\n"},{"storage":"expansion:temp","nbt": "tellraw.legs", "interpret": true},{text:"\n"},{"storage":"expansion:temp","nbt": "tellraw.feet", "interpret": true}]

# reset data storages & scores
data remove storage expansion:temp tellraw
data remove storage expansion:temp armor
scoreboard players reset #head exp.cold_resist
scoreboard players reset #head exp.heat_resist
scoreboard players reset #chest exp.cold_resist
scoreboard players reset #chest exp.heat_resist
scoreboard players reset #legs exp.cold_resist
scoreboard players reset #legs exp.heat_resist
scoreboard players reset #feet exp.cold_resist
scoreboard players reset #feet exp.heat_resist
