execute if entity @s[tag=exp.landing_earth] run function expansion:vehicles/return_capsule/landing

execute if entity @s[tag=!exp.landing_earth] unless predicate expansion:nbt_checks/root_vehicle/return_capsule run function expansion:vehicles/return_capsule/exit
