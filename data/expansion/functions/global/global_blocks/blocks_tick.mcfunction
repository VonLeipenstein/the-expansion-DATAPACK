# terraformer
execute if entity @s[tag=exp.shield_generator] run function expansion:blocks/terraformer/main
# lacrymae extractor
execute if entity @s[tag=exp.lacrymae_extractor] run function expansion:blocks/lacrymae_extractor/main
# planetarium
execute if entity @s[tag=exp.planetarium] run function expansion:blocks/planetarium/main
# compressor
execute if entity @s[tag=exp.compressor] run function expansion:blocks/compressor/main
# enhancer
execute if entity @s[tag=exp.enhancer] run function expansion:blocks/enhancer/main
# arc furnace
execute if entity @s[tag=exp.arc_furnace] run function expansion:blocks/arc_furnace/main
# fabricator
execute if entity @s[tag=exp.fabricator] run function expansion:blocks/fabricator/main
# oxygenator
execute if entity @s[tag=exp.oxygenator] run function expansion:blocks/oxygenator/main
# assembler
execute if entity @s[tag=exp.assembler] positioned ~ ~-1 ~ run function expansion:blocks/assembler/main
# portal
execute if entity @s[tag=exp.portal_main,tag=exp.activated_portal] run function expansion:blocks/portal/main
# assembler
execute if entity @s[tag=exp.tesla_coil] run function expansion:blocks/tesla_coil/main
# modification station
execute if entity @s[tag=exp.modstation] run function expansion:blocks/modification_station/main
# drone home
execute if entity @s[tag=exp.drone_home] run function expansion:mobs/evil_drone/drone_home/tick
