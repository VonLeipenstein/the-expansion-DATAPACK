# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/diagnostics
# Total callers: 0
# None found
# <<< generated function callers <<<

execute on vehicle unless predicate expansion:passengers/rocket_segment on passengers if entity @s[tag=exp.rocket_diagnostics] run return run data modify entity @s text set value \
[\
{text:"No Active Rocket\n\n",underlined:true},\
{text:"Place a Rocket\nSegment to start\nbuilding your Rocket!",underlined:false}\
]

# store the current rockets scores inside the launchpad.
# vehicle is the launchpad
execute on vehicle store result score @s exp.weight on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.weight
execute on vehicle store result score @s exp.engine_thrust on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.engine_thrust
execute on vehicle store result score @s exp.fuel_level on passengers on passengers if entity @s[tag=exp.rocket_segment] run scoreboard players get @s exp.fuel_max

# count the current segments
execute on vehicle run function expansion:vehicles/rocket_segment/count_segments

# calculate the required fuel, fuel max is required fuel, fuel level is current fuel
scoreboard players set #temp exp.fuel_max 200

# create a text storage
data modify storage expansion:temp diagnostics set value \
[\
{text:""},\
[\
    {text:"",color:"green"},\
    {text:"Weight: ",bold:true},\
    {score:{name:"@s",objective:"exp.weight"}},\
    {text:"/"},\
    {score:{name:"@s",objective:"exp.engine_thrust"}},\
],\
[\
    {text:"",color:"green"},\
    {text:"\nFuel Capacity: ",bold:true},\
    {score:{name:"@s",objective:"exp.fuel_max"}},\
],\
{text:"\n\nDiagnosis:\n"},\
{text:"Ready for launch!\n"}\
]

execute if score #temp exp.fuel_level < #temp exp.fuel_max run data modify storage expansion:temp diagnostics[4].text set value "Insufficient Fuel."
execute if score #temp exp.fuel_level < #temp exp.fuel_max run data modify storage expansion:temp diagnostics[2][0].color set value "red"

# if thrust is 0, say engine missing
execute unless score #top exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\na Nose Cone."
execute unless score #body exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "Add at least one\nBody Segment"
execute unless score #fuel exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\na Propellant Tank"
# if weight > thrust say too heavy
execute if score #temp exp.weight > #temp exp.engine_thrust run data modify storage expansion:temp diagnostics[4].text set value "Rocket is too heavy\nuse less segments."
execute if score #temp exp.weight > #temp exp.engine_thrust run data modify storage expansion:temp diagnostics[1][0].color set value "red"

execute unless score #bottom exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\n an Engine Segment"


# merge the scores with the text display
data modify entity @s text set from storage expansion:temp diagnostics

scoreboard players reset #temp exp.weight
scoreboard players reset #temp exp.engine_thrust
scoreboard players reset #temp exp.fuel_level
scoreboard players reset #temp exp.fuel_max

scoreboard players reset #top exp.hold_count
scoreboard players reset #body exp.hold_count
scoreboard players reset #bottom exp.hold_count
scoreboard players reset #fuel exp.hold_count