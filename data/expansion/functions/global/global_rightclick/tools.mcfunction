# cryoblaster
execute if predicate expansion:nbt_checks/selected_item/items/cryoblaster unless entity @s[tag=exp.inside_vehicle] run function expansion:items/cryoblaster/cryoblaster
# wrenc
execute if predicate expansion:nbt_checks/selected_item/items/wrench unless entity @s[tag=exp.inside_vehicle] run function expansion:items/wrench/wrench
# space equipment
execute if predicate expansion:nbt_checks/selected_item/space_equipment/equipment run function expansion:items/space_equipment/equip
# oxygen system
execute if predicate expansion:nbt_checks/armor/space_equipment/equipment if predicate expansion:nbt_checks/selected_item/items/oxygen_tank run function expansion:global/oxygen_regulation/refill_check
# pocket space transporter
execute if predicate expansion:nbt_checks/selected_item/items/pocket_space run function expansion:items/transporter/transport_block/place
# fleet finder
execute if predicate expansion:nbt_checks/selected_item/items/fleet_finder run function expansion:items/fleet_finder/find
# railgun
execute if predicate expansion:nbt_checks/selected_item/items/railgun unless score @s[tag=!exp.inside_vehicle] exp.warmup matches 1.. unless score @s exp.cooldown matches 1.. run function expansion:items/railgun/main
# pet drone
execute if predicate expansion:nbt_checks/selected_item/items/pet_drone if entity @s[tag=!exp.has_active_drone,tag=!exp.inside_vehicle] run function expansion:items/drone_pet/summon

# planetarium used for markers in space
execute if predicate expansion:nbt_checks/selected_item/blocks/planetarium if predicate expansion:dimension/space if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/markers/marker_switcher