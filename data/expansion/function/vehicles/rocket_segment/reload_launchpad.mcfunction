tag @s remove exp.reload_signal

execute unless entity @s[tag=exp.launch_pad] on vehicle run return run function expansion:vehicles/rocket_segment/reload_launchpad

execute if entity @s[tag=exp.launch_pad] run function expansion:blocks/launch_pad/reload