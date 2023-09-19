execute if predicate expansion:dimension/moon on vehicle on vehicle run function expansion:vehicles/lunar_module/inside

execute unless predicate expansion:nbt_checks/root_vehicle/lunar_module unless entity @s[tag=exp.landing_earth] as @e[type=minecraft:armor_stand,tag=exp.lunar_module,limit=1,sort=nearest] run function expansion:vehicles/lunar_module/exit

execute if entity @s[tag=exp.landing_moon] on vehicle on vehicle run function expansion:vehicles/lunar_module/landing

execute if entity @s[tag=exp.landing_earth] unless score @s exp.cooldown matches 1.. run function expansion:global/transitions/moon_earth/moon_earth_check

