# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/exits/passenger
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:player/death (1 caller) [WARN side/down 4]
# - function expansion:vehicles/exit (1 caller) [OK above +2]
# <<< generated function callers <<<

# temporary tag
tag @s add exp.exiting_ship
# make the player ride the spaceship to make it easier to detect entities
ride @s mount @e[tag=exp.spaceship_seat,distance=..10,limit=1,sort=nearest]

# kill any planetarium markers that may be present
execute on vehicle on vehicle run function expansion:vehicles/spaceship/markers/deactivate_markers

# remove passenger count
execute on vehicle on vehicle run scoreboard players remove @s exp.passenger_count 1

# when the pilot leaves the ship first make the other passenger the new pilot
execute if entity @s[tag=exp.spaceship_pilot] on vehicle on vehicle unless score @s exp.passenger_count matches 0 on passengers on passengers run function expansion:vehicles/spaceship/exits/assign_new_pilot

# run when this is the last player to leave the ship
execute on vehicle on vehicle if score @s exp.passenger_count matches 0 run function expansion:vehicles/spaceship/exits/pilot

# slow falling effect to make sure the player doesn't take accumulated fall damage
effect give @s slow_falling 1 1 true

# clear the speed effect (used for FOV)
effect clear @s speed

# teleport the player next to the spaceship
execute on vehicle on vehicle at @s rotated ~ 0 on passengers on passengers run tp @s[tag=exp.exiting_ship,tag=exp.inside_spaceship] ^-2 ^0.1 ^1 ~ ~
ride @s dismount

# remove basic player effects
function expansion:vehicles/spaceship/exits/remove_effects
