# check for an obsidian launchpad
execute unless function expansion:vehicles/rocket/has_launchpad on passengers on passengers if entity @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/launchpad

# check if the player is wearing space equipment
execute unless entity @p[tag=exp.clicked,predicate=expansion:nbt_checks/armor/space_equipment/equipment] on passengers on passengers if entity @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/equip_space_equipment

# check if the rocket is fully fueled
execute unless score @s exp.fuel_level = @s exp.fuel_max on passengers on passengers if entity @p[tag=exp.clicked] run return run function expansion:utilities/error_messages/low_fuel

# if all else succeeds, start the launch
scoreboard players set @s exp.timer_2 230
