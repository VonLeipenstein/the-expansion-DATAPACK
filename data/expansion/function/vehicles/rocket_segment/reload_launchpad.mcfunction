tag @s remove exp.signal_pad

execute unless entity @s[tag=exp.launch_pad] on vehicle run return run function expansion:vehicles/rocket_segment/reload_launchpad

execute if entity @s[tag=exp.launch_pad] on passengers if entity @s[tag=exp.control_link] on origin run function expansion:blocks/launch_control/reload