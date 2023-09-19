# --- run from the space_transition advancement

# moon-earth transitions
execute if entity @s[tag=exp.inside_rocket,tag=exp.rocket_pilot,tag=!exp.landing_earth,predicate=expansion:dimension/overworld] at @s run function expansion:global/transitions/moon_earth/earth_to_moon
execute if entity @s[tag=exp.inside_module,tag=exp.module_pilot,tag=!exp.landing_moon,predicate=expansion:dimension/moon] at @s run function expansion:global/transitions/moon_earth/moon_to_earth

# spaceship transitions
execute if entity @s[tag=exp.inside_spaceship,tag=exp.spaceship_pilot,predicate=expansion:dimension/exp_not_space] at @s run function expansion:vehicles/spaceship/transition/init

# revoke the advancement so it may be triggered again
advancement revoke @s only expansion:utility/space_transition