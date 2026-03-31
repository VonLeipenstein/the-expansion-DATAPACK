execute on vehicle unless predicate expansion:passengers/rocket_segment on passengers if entity @s[tag=exp.rocket_diagnostics] run return run data modify entity @s text set value \
[\
{text:"No Active Rocket\n\n",underlined:true},\
{text:"Place a Rocket\nSegment to start\nbuilding your Rocket!",underlined:false}\
]

# prepare a text storage
data modify storage expansion:temp diagnostics set value \
[\
{text:""},\
{text:"\nStats: "},\
{text:"\nMass: "},\
{score:{name:"#stat",objective:"exp.mass"}},\
{text:"\nThrust: "},\
{score:{name:"#stat",objective:"exp.engine_thrust"}},\
{text:"\nEfficiency: "},\
{score:{name:"#stat",objective:"exp.engine_efficiency"}},\
{text:"\nFuel: "},\
{score:{name:"#stat",objective:"exp.fuel_level"}},\
{text:"/"},\
{score:{name:"#stat",objective:"exp.fuel_max"}},\
]

# Check if the required parts are present
# execute unless score #top exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\na Nose Cone."
# execute unless score #body exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "Add at least one\nBody Segment"
# execute unless score #fuel exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\na Propellant Tank"
# execute unless score #bottom exp.hold_count matches 1.. run data modify storage expansion:temp diagnostics[4].text set value "A Rocket requires\n an Engine Segment"

# if weight > thrust the rocket is too heavy
# execute if score @s exp.weight > @s exp.engine_thrust run data modify storage expansion:temp diagnostics[4].text set value "Rocket is too heavy\nuse less segments."
# execute if score @s exp.weight > @s exp.engine_thrust run data modify storage expansion:temp diagnostics[1][0].color set value "red"

# if the fuel is insufficient the rocket cannot launch
# engine efficiency is the amount of fuel per weight required to launch the rocket.
# this also depends on the planets gravity score
# execute if score @s exp.fuel_level < #required exp.fuel_level run data modify storage expansion:temp diagnostics[4].text set value "Not enough Fuel for trip."
# execute if score @s exp.fuel_level < #required exp.fuel_level run data modify storage expansion:temp diagnostics[3][0].color set value "red"

# merge the scores with the text display
data modify entity @s text set from storage expansion:temp diagnostics

# reset temp scores
scoreboard players reset #top exp.hold_count
scoreboard players reset #body exp.hold_count
scoreboard players reset #bottom exp.hold_count
scoreboard players reset #fuel exp.hold_count