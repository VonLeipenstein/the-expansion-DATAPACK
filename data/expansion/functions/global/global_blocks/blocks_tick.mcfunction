# terraformer
execute if entity @s[tag=exp.terraformer] run function expansion:blocks/terraformer/terraformer_tick
# lacrymae extractor
execute if entity @s[tag=exp.lacrymae_extractor] run function expansion:blocks/lacrymae_extractor/extractor_tick
# planetarium
execute if entity @s[tag=exp.planetarium] run function expansion:blocks/planetarium/planetarium_tick
# compressor
execute if entity @s[tag=exp.compressor] run function expansion:blocks/compressor/compressor_tick
# enhancer
execute if entity @s[tag=exp.enhancer] run function expansion:blocks/enhancer/enhancer_tick
# arc furnace
execute if entity @s[tag=exp.arc_furnace] run function expansion:blocks/arc_furnace/arc_furnace_tick
# fabricator
execute if entity @s[tag=exp.fabricator] run function expansion:blocks/fabricator/fabricator_tick
# oxygenator
execute if entity @s[tag=exp.oxygenator] run function expansion:blocks/oxygenator/oxygenator_tick
# assembler
execute if entity @s[tag=exp.assembler] positioned ~ ~-1 ~ run function expansion:blocks/assembler/assembler_tick
# portal
execute if entity @s[tag=exp.portal_main,tag=exp.activated_portal] run function expansion:blocks/portal/portal_tick
# assembler
execute if entity @s[tag=exp.tesla_coil] run function expansion:blocks/tesla_coil/tesla_coil_tick
# modification station
execute if entity @s[tag=exp.modstation] run function expansion:blocks/modification_station/modstation_tick
# drone home
execute if entity @s[tag=exp.drone_home] run function expansion:mobs/evil_drone/drone_home/tick
