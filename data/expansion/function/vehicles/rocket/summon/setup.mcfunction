# summon and mount the animated model 
execute at @s rotated ~ 0 run function animated_java:rocket/summon {args: {}}
ride @e[type=item_display,tag=aj.rocket.root,distance=..0.01,limit=1] mount @s

# Setup text displays
execute on passengers if entity @s[tag=aj.rocket.root] run function animated_java:rocket/animations/rocket.setup_text/play
execute on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text set value \
[\
{text:"",underlined:false},\
{text:"Launch Checklist:",color:"white",underlined:true},\
{text:"\n☐ "},\
{text:"3x3 Launchpad",color:"white"},\
{text:"\n☐ "},\
{text:"16 Blaze Powder",color:"white"},\
{text:"\n☐ "},\
{text:"A Full Spacesuit",color:"white"},\
{text:"\n☐ "},\
{text:"Oxygen Tanks",color:"white"},\
{text:"\n☐ "},\
{text:"Some Repair Kits",color:"white"},\
{text:"\n\nGodspeed,\n ~VonLeipenstein"}\
]
execute on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display3] run data modify entity @s text set value \
[\
{text:""},\
{text:"Altitude: ",color:"white"},\
{score:{name:"#temp",objective:"exp.y"}},\
{text:"\n\nFuel: ",color:"white"},\
{score:{name:"#temp",objective:"exp.fuel_percentage"}},\
{text:" \n\n\n"}\
]
# Set the fuel level from the handheld item
execute store result score @s exp.fuel_level run data get entity @p[tag=exp.tick_player] SelectedItem.components."minecraft:custom_data".fuel_lvl

# Overlayed on 1.21.6+
function expansion:vehicles/rocket/summon/set_camera_distance

# initialize the waypoint (1.21.6+)
function expansion:vehicles/rocket/summon/set_waypoint

# set the max fuel
scoreboard players set @s exp.fuel_max 640

# mount the rocket onto a launch pad (if there is any)
ride @s mount @n[type=minecraft:item_display,tag=exp.launch_pad,distance=..0.01]

tag @s remove exp.new_vehicle