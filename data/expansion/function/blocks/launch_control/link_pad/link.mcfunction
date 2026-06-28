# No nearby launchpad
execute unless entity @e[type=item_display,tag=exp.launch_pad,distance=..10,limit=1] run return fail

# 
data modify storage expansion:snowball_link link.target set from entity @n[type=item_display,tag=exp.launch_pad,distance=..10,limit=1] UUID
function expansion:utilities/snowball_link/two_way

# adds tags to snowballs
execute on passengers if entity @s[tag=exp.source_link] run tag @s add exp.pad_link
execute on passengers if entity @s[tag=exp.source_link] on origin on passengers if entity @s[tag=exp.target_link] run tag @s add exp.control_link

# initiate the pad
function expansion:blocks/launch_control/text_display/initiate

# retrieve info from the pad
function expansion:blocks/launch_control/reload