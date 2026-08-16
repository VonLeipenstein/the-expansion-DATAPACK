execute on passengers if entity @s[tag=exp.rocket_diagnostics_title] run data merge entity @s {text:[{text:"Diagnostics",underlined:true,bold:true}]}

# initialize origin display
execute on passengers if entity @s[tag=exp.rocket_origin_title] run data merge entity @s {text:[{text:""},{text:"Current Planet",underlined:true,bold:true},{text:"\n\n\n\n\n\n"},{text:"Earth",color:"green"},{text:"\n"}]}
function expansion:blocks/launch_control/text_display/origin

# initialize destination display
execute on passengers if entity @s[tag=exp.rocket_destination_title] run data merge entity @s {text:[{text:""},{text:"Select Destination",underlined:true,bold:true},{text:"\n\n\n\n\n\n"},{text:"Earth",color:"green"},{text:"\n"}]}
function expansion:blocks/launch_control/text_display/destination


execute on passengers if entity @s[tag=exp.rocket_trip_title] run data merge entity @s {text:[{text:"    Fuel    ",underlined:true,bold:true}]}

execute on passengers if entity @s[tag=exp.destination_left] run data merge entity @s {text:{"text":"◀"}}
execute on passengers if entity @s[tag=exp.destination_right] run data merge entity @s {text:{"text":"▶"}}

