# expand new markers
execute if entity @s[tag=exp.new_scanner] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks

# decay old markers if no new markers are nearby
function expansion:blocks/oxygenator/oxygenate/fill_space/add_decay
