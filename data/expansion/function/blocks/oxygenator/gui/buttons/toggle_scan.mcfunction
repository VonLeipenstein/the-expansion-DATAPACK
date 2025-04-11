function expansion:utilities/sounds/button

# Stop the scan if one is already going on
execute if score @s exp.timer_1 matches 1.. run return run tag @s add exp.depressurize

# Start the scan
# this is also the max scan time before a failure
function expansion:blocks/oxygenator/oxygenate/scan/init/main
