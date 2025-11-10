# If the entity is a spawner which may be created by a structure, then spawn the mob
execute if entity @s[tag=exp.mob_spawner] unless score #STRUCTURE_MOB_SPAWNING exp.bool matches 0 run return run function expansion:mobs/spawn

# Main mob functions
execute on vehicle if entity @s[tag=exp.evil_drone] at @s run return run function expansion:mobs/evil_drone/main

execute on vehicle if entity @s[tag=exp.pet_drone] at @s run return run function expansion:mobs/drone_pet/main

execute on vehicle if entity @s[tag=exp.mech_mob] at @s run return run function expansion:mobs/mech/main

execute on vehicle if entity @s[tag=exp.martian] at @s run return run function expansion:mobs/martian/main