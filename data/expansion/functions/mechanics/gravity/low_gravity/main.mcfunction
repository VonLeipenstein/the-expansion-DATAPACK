execute unless entity @s[tag=exp.inside_vehicle] unless predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:mechanics/gravity/low_gravity/gravity

execute unless entity @s[tag=exp.inside_vehicle] if predicate expansion:nbt_checks/armor/magnetic_boots run function expansion:items/magnetic_boots/low_gravity