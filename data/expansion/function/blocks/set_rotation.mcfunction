# >>> generated function callers >>>
# Callers for expansion:blocks/set_rotation
# Total callers: 15 from 15 source(s)
# Folder rule (function callers): 0/15 honored
# Sources:
# - function expansion:blocks/arc_furnace/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/assembler/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/compressor/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/enhancer/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/fabricator/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/lacrymae_extractor/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/launch_pad/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/modification_station/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/oxygenator/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/portal/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/terraformer/place/setup (1 caller) [WARN side/down 2]
# - function expansion:blocks/tesla_coil/place/setup (1 caller) [WARN side/down 2]
# - function expansion:vehicles/buggy/summon/setup (1 caller) [WARN side/down 4]
# - function expansion:vehicles/mech/summon/setup (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/summon/setup (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp exp.yaw
scoreboard players reset #temp exp.yaw

