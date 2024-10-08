# cryoblaster
execute if predicate expansion:nbt_checks/selected_item/items/cryoblaster unless entity @s[tag=exp.inside_vehicle] run function expansion:items/cryoblaster/cryoblaster
# space equipment
execute if predicate expansion:nbt_checks/selected_item/space_equipment/equipment run function expansion:items/space_equipment/equip
# oxygen system
execute if predicate expansion:nbt_checks/armor/space_equipment/equipment if predicate expansion:nbt_checks/selected_item/items/oxygen_tank run function expansion:mechanics/oxygen/refill_check
# fleet finder
execute if predicate expansion:nbt_checks/selected_item/items/fleet_finder run function expansion:items/fleet_finder/find
# railgun
execute if predicate expansion:nbt_checks/selected_item/items/railgun unless score @s[tag=!exp.inside_vehicle] exp.warmup matches 1.. unless score @s exp.cooldown matches 1.. run function expansion:items/railgun/main
# pet drone
execute if predicate expansion:nbt_checks/selected_item/items/pet_drone if entity @s[tag=!exp.has_active_drone,tag=!exp.inside_vehicle] run function expansion:mobs/drone_pet/summon