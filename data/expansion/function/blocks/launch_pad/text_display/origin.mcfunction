# create a text storage
data modify storage expansion:temp destination set value \
[\
{text:""},\
{text:"The Moon\n",bold:true,color:"gray"},\
{text:"Fuel: "},\
{score:{name:"#temp",objective:"exp.fuel_max"}},\
]

# calculate the required fuel, fuel max is required fuel, fuel level is current fuel
execute on vehicle store result score #temp exp.fuel_consumption on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_consumption
execute on vehicle store result score #temp exp.fuel_max on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

execute unless score #temp exp.fuel_level < #temp exp.fuel_max run data modify storage expansion:temp diagnostics[5].text set value "\n\n\n\n"

execute on vehicle store result score #temp exp.fuel_max on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

execute on vehicle if score @s exp.hold_value matches 0 run data modify storage expansion:temp destination[2] set value {text:"Earth\n",bold:true,color:"green"}
execute on vehicle if score @s exp.hold_value matches 1 run data modify storage expansion:temp destination[2] set value {text:"The Moon\n",bold:true,color:"gray"}
execute on vehicle if score @s exp.hold_value matches 2 run data modify storage expansion:temp destination[2] set value {text:"Mars\n",bold:true,color:"red"}
execute on vehicle if score @s exp.hold_value matches 3 run data modify storage expansion:temp destination[2] set value {text:"Venus\n",bold:true,color:"gold"}

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination