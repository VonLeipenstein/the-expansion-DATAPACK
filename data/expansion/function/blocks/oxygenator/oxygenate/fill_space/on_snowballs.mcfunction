# scan neighbouring blocks and summon new markers to progress the wave, only one marker can be added at once
execute on origin if entity @s[tag=exp.new_scanner] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/scan_nearby_blocks

# if this fails it is because the marker can't scan any more
# this branch should then be disabled
tag @s remove exp.new_scanner_link