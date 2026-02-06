## global block logic
# check if a player is very close
tag @s[tag=exp.player_nearby] remove exp.player_nearby
execute if entity @p[distance=..6] run tag @s add exp.player_nearby

# load the block (run its functions) if a player is nearby
tag @s[tag=exp.loaded] remove exp.loaded
execute if entity @p[distance=..50] run tag @s add exp.loaded

# toggle the barrel for barrel UI blocks
execute if entity @s[tag=exp.player_nearby] if block ~ ~ ~ minecraft:barrel run function expansion:utilities/barrel/toggle_open

## blocks that need to be loaded regardless of nearest player distance
execute if entity @s[tag=exp.terraformer] run return run function expansion:blocks/terraformer/main
execute if entity @s[tag=exp.modstation] run return run function expansion:blocks/modification_station/main
execute if entity @s[tag=exp.drone_home] run return run function expansion:mobs/evil_drone/drone_home/main
execute if entity @s[tag=exp.launch_pad] run return run function expansion:blocks/launch_pad/main

## blocks that only function when a player is within 50 blocks
execute unless entity @s[tag=exp.loaded] run return fail
execute if entity @s[tag=exp.oxygenator] run return run function expansion:blocks/oxygenator/main
execute if entity @s[tag=exp.lacrymae_extractor] run return run function expansion:blocks/lacrymae_extractor/main
execute if entity @s[tag=exp.planetarium] run return run function expansion:blocks/planetarium/main
execute if entity @s[tag=exp.compressor] run return run function expansion:blocks/compressor/main
execute if entity @s[tag=exp.enhancer] run return run function expansion:blocks/enhancer/main
execute if entity @s[tag=exp.arc_furnace] run return run function expansion:blocks/arc_furnace/main
execute if entity @s[tag=exp.tesla_coil] run return run function expansion:blocks/tesla_coil/main
execute if entity @s[tag=exp.fabricator] run return run function expansion:blocks/fabricator/main
execute if entity @s[tag=exp.assembler] run return run function expansion:blocks/assembler/main
execute if entity @s[tag=exp.portal] run return run function expansion:blocks/portal/main