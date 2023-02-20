# cryoblaster
execute if entity @s[predicate=expansion:nbt_checks/selected_item/items/cryoblaster,tag=!exp.inside_spaceship] run function expansion:items/cryoblaster/cryoblaster
# wrench
execute if entity @s[predicate=expansion:nbt_checks/selected_item/items/wrench,tag=!exp.inside_spaceship] run function expansion:items/wrench/wrench
# space equipment
execute if entity @s[predicate=expansion:nbt_checks/selected_item/space_equipment/equipment,tag=!exp.inside_spaceship] run function expansion:items/space_equipment/equip
# spaceship blasters
execute if entity @s[predicate=expansion:nbt_checks/selected_item/items/blasters,tag=exp.inside_spaceship,scores={exp.fuel_level=1..}] unless predicate expansion:nbt_checks/selected_item/blocks/planetarium unless predicate expansion:nbt_checks/selected_item/items/fleet_finder run function expansion:vehicles/spaceship/blasters/fire
# oxygen system
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carrot_on_a_stick",tag:{space_jetpack:1b}}],SelectedItem:{tag:{oxygen_tank:1b}}}] run function expansion:global/oxygen_regulation/refill_check
# pocket space transporter
execute if entity @s[predicate=expansion:nbt_checks/selected_item/items/pocket_space] run function expansion:items/transporter/transport_block/place
# fleet finder
execute if predicate expansion:nbt_checks/selected_item/items/fleet_finder run function expansion:items/fleet_finder/find
# railgun
execute if predicate expansion:nbt_checks/selected_item/items/railgun unless score @s[tag=!exp.inside_spaceship] exp.warmup matches 1.. unless score @s exp.cooldown matches 1.. run function expansion:items/railgun/main
