# get all rocket scores from the launch_pad
execute on passengers if entity @s[tag=exp.pad_link] on origin run function expansion:blocks/launch_pad/rocket/get_scores

# Set up text data for stats, origin, destination, and trip
function expansion:blocks/launch_control/text_display/stats
function expansion:blocks/launch_control/text_display/origin
function expansion:blocks/launch_control/text_display/destination
function expansion:blocks/launch_control/text_display/trip

function expansion:blocks/launch_control/text_display/apply_error

# Merge text data with entities
execute on passengers if entity @s[tag=exp.rocket_diagnostics] run data modify entity @s text set from storage expansion:temp launchpad.stats
execute on passengers if entity @s[tag=exp.rocket_destination] run data modify entity @s text set from storage expansion:temp launchpad.destination
execute on passengers if entity @s[tag=exp.rocket_origin] run data modify entity @s text set from storage expansion:temp launchpad.origin
execute on passengers if entity @s[tag=exp.rocket_trip] run data modify entity @s text set from storage expansion:temp launchpad.trip

# Reset scores
function expansion:blocks/launch_control/text_display/reset_scores