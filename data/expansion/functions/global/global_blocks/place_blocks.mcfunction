# ---run from expansion:global/global_rightclick/blocks---

# terraformer
execute if predicate expansion:nbt_checks/selected_item/blocks/terraformer run function expansion:blocks/terraformer/place
# lacrymae extractor
execute if predicate expansion:nbt_checks/selected_item/blocks/lacrymae_extractor run function expansion:blocks/lacrymae_extractor/place
# compressor
execute if predicate expansion:nbt_checks/selected_item/blocks/compressor run function expansion:blocks/compressor/place
# enhancer
execute if predicate expansion:nbt_checks/selected_item/blocks/enhancer run function expansion:blocks/enhancer/place
# arc_furnace
execute if predicate expansion:nbt_checks/selected_item/blocks/arc_furnace run function expansion:blocks/arc_furnace/place
# fabricator
execute if predicate expansion:nbt_checks/selected_item/blocks/fabricator run function expansion:blocks/fabricator/place
# oxygenator
execute if predicate expansion:nbt_checks/selected_item/blocks/oxygenator run function expansion:blocks/oxygenator/place
# portal
execute if predicate expansion:nbt_checks/selected_item/portal run function expansion:contraptions/portal/assembly/place_portal/place_portal_init
# assembler
execute if predicate expansion:nbt_checks/selected_item/assembler run function expansion:contraptions/assembler/place
# rocket parts
execute if predicate expansion:nbt_checks/selected_item/blocks/rocket_part run function expansion:blocks/rocket_parts/place
# tesla coil
execute if predicate expansion:nbt_checks/selected_item/blocks/tesla_coil run function expansion:blocks/tesla_coil/place
# modification station
execute if predicate expansion:nbt_checks/selected_item/blocks/modstation run function expansion:blocks/modification_station/place

# planetarium
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium if entity @e[type=minecraft:armor_stand,tag=exp.planetarium,limit=1,sort=nearest,distance=..22] run function expansion:utilities/error_messages/planetarium_error
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium unless entity @s[tag=exp.planetarium_error] run function expansion:blocks/planetarium/place
tag @s[tag=exp.planetarium_error] remove exp.planetarium_error

# finish the block placing
item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
playsound minecraft:block.metal.place block @s
