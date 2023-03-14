execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/rocket] at @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] run function expansion:vehicles/rocket/launch_init

advancement revoke @s only expansion:utility/launch_button