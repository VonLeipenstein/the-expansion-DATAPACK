# >>> generated function callers >>>
# Callers for expansion:blocks/place
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:player/rightclick/placement (1 caller) [WARN side/down 3]
# - function expansion:vehicles/rocket_segment/click_detection/rightclick (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# place the correct block
execute if predicate expansion:holding/blocks/planetarium run function expansion:blocks/planetarium/place/init
execute if predicate expansion:holding/blocks/terraformer run function expansion:blocks/terraformer/place/init
execute if predicate expansion:holding/blocks/lacrymae_extractor run function expansion:blocks/lacrymae_extractor/place/init
execute if predicate expansion:holding/blocks/compressor run function expansion:blocks/compressor/place/init
execute if predicate expansion:holding/blocks/enhancer run function expansion:blocks/enhancer/place/init
execute if predicate expansion:holding/blocks/arc_furnace run function expansion:blocks/arc_furnace/place/init
execute if predicate expansion:holding/blocks/fabricator run function expansion:blocks/fabricator/place/init
execute if predicate expansion:holding/blocks/oxygenator run function expansion:blocks/oxygenator/place/init
execute if predicate expansion:holding/blocks/portal run function expansion:blocks/portal/place/init
execute if predicate expansion:holding/blocks/assembler run function expansion:blocks/assembler/place/init
execute if predicate expansion:holding/blocks/tesla_coil run function expansion:blocks/tesla_coil/place/init
execute if predicate expansion:holding/blocks/modstation run function expansion:blocks/modification_station/place/init
execute if predicate expansion:holding/items/pocket_space run function expansion:blocks/transporter/place/init
execute if predicate expansion:holding/blocks/launch_pad run function expansion:blocks/launch_pad/place/init
execute if predicate expansion:holding/blocks/launch_control run function expansion:blocks/launch_control/place/init
execute if predicate expansion:holding/blocks/infuser run function expansion:blocks/infuser/place/init

# remove one from the held item count
item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
playsound minecraft:block.metal.place block @s

return 1