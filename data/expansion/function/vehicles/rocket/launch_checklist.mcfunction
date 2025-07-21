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

execute at @s if function expansion:vehicles/rocket/has_launchpad on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text.extra[1] set value {text:"\n☑ ",color:"green"}
execute if function expansion:vehicles/rocket/pilot_has_enough_fuel on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text.extra[3] set value {text:"\n☑ ",color:"green"}
execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] if entity @s[predicate=expansion:armor/all] on vehicle on vehicle on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text.extra[5] set value {text:"\n☑ ",color:"green"}
execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] if items entity @s container.* *[custom_data~{exp_item:{name:"oxygen_tank"}}] on vehicle on vehicle on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text.extra[7] set value {text:"\n☑ ",color:"green"}
execute if function expansion:vehicles/rocket/pilot_has_repair_kits on passengers if entity @s[tag=aj.rocket.root] on passengers if entity @s[tag=aj.rocket.node.text_display] run data modify entity @s text.extra[9] set value {text:"\n☑ ",color:"green"}
