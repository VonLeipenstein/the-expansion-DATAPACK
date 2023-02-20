execute unless entity @s[tag=exp.launchpad_good] as @p run function expansion:utilities/error_messages/launchpad
execute as @p[predicate=!expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:utilities/error_messages/equip_space_equipment
execute unless score @s exp.fuel_level = @s exp.fuel_max as @p run function expansion:utilities/error_messages/low_fuel
