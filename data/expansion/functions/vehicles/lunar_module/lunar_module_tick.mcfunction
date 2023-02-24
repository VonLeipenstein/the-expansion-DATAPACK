execute if entity @s[predicate=expansion:dimension/moon] on vehicle on vehicle on vehicle run function expansion:vehicles/lunar_module/inside
execute unless entity @s[predicate=expansion:nbt_checks/root_vehicle/lunar_module] unless entity @s[tag=exp.landing_earth] run function expansion:vehicles/lunar_module/exit

execute if entity @s[tag=exp.landing_moon] on vehicle on vehicle on vehicle run function expansion:vehicles/lunar_module/landing
execute if entity @s[tag=exp.landing_earth] run function expansion:global/transitions/moon_earth/moon_earth_finish

