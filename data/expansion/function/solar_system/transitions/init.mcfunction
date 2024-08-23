# --- run from the space_transition advancement

# moon-earth transitions
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/rocket,predicate=expansion:dimension/overworld,tag=exp.rocket_pilot,tag=!exp.landing_earth] at @s run function expansion:solar_system/transitions/moon_earth/earth_to_moon
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/lunar_module,predicate=expansion:dimension/moon,tag=exp.module_pilot,tag=!exp.landing_moon] at @s run function expansion:solar_system/transitions/moon_earth/moon_to_earth

# spaceship transitions
execute if entity @s[predicate=expansion:nbt_checks/root_vehicle/spaceship,predicate=expansion:dimension/exp_not_space,tag=exp.spaceship_pilot] at @s run function expansion:vehicles/spaceship/transition/init

# revoke the advancement so it may be triggered again
advancement revoke @s only expansion:utility/space_transition