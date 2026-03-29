# create a text storage
data modify storage expansion:temp destination set value \
[\
{text:""},\
{text:"Weight: "},\
{score:{name:"@s",objective:"exp.mass"}},\
{text:"\nThrust: "},\
{score:{name:"@s",objective:"exp.engine_thrust"}},\
{text:"\nEfficiency: "},\
{score:{name:"@s",objective:"exp.engine_efficiency"}},\
{text:"\nFuel Capacity: "},\
{score:{name:"@s",objective:"exp.fuel_max"}},\
{text:"\nFuel Level: "},\
{score:{name:"@s",objective:"exp.fuel_level"}},\
]

# store the current rockets scores inside the text display.
execute store result score @s exp.mass on vehicle on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.mass
execute store result score @s exp.engine_thrust on vehicle on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_thrust
execute store result score @s exp.engine_efficiency on vehicle on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_efficiency
execute store result score @s exp.fuel_level on vehicle on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_level
execute store result score @s exp.fuel_max on vehicle on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

# Prepare the layout of the text display
#execute unless score @s exp.fuel_level < @s exp.fuel_max run data modify storage expansion:temp diagnostics[5].text set value "\n\n\n\n"
execute if score @s exp.hold_value matches 0 run data modify storage expansion:temp destination[2] set value {text:"Earth\n",bold:true,color:"green"}
execute if score @s exp.hold_value matches 1 run data modify storage expansion:temp destination[2] set value {text:"The Moon\n",bold:true,color:"gray"}
execute if score @s exp.hold_value matches 2 run data modify storage expansion:temp destination[2] set value {text:"Mars\n",bold:true,color:"red"}
execute if score @s exp.hold_value matches 3 run data modify storage expansion:temp destination[2] set value {text:"Venus\n",bold:true,color:"gold"}

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp destination