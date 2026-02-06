# place the correct block
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium run function expansion:blocks/planetarium/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/terraformer run function expansion:blocks/terraformer/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/lacrymae_extractor run function expansion:blocks/lacrymae_extractor/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/compressor run function expansion:blocks/compressor/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/enhancer run function expansion:blocks/enhancer/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/arc_furnace run function expansion:blocks/arc_furnace/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/fabricator run function expansion:blocks/fabricator/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/oxygenator run function expansion:blocks/oxygenator/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/portal run function expansion:blocks/portal/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/assembler run function expansion:blocks/assembler/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/tesla_coil run function expansion:blocks/tesla_coil/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/modstation run function expansion:blocks/modification_station/place/init
execute if predicate expansion:nbt_checks/selected_item/items/pocket_space run function expansion:blocks/transporter/place/init
execute if predicate expansion:nbt_checks/selected_item/blocks/launch_pad run function expansion:blocks/launch_pad/place/init
execute if predicate expansion:nbt_checks/selected_item/items/cargo_beacon run function expansion:blocks/launch_pad/beacon/place

# remove one from the held item count
item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
playsound minecraft:block.metal.place block @s