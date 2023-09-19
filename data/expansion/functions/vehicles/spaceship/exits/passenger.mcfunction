# temporary tag
tag @s add exp.exiting_ship
# make the player ride the spaceship to make it easier to detect entities
ride @s mount @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# remove passenger count
execute on vehicle on vehicle run scoreboard players remove @s exp.passenger_count 1

execute unless entity @s[tag=exp.spaceship_pilot] run function expansion:vehicles/spaceship/exits/restore_passenger_helmet
execute if entity @s[tag=exp.spaceship_pilot] run function expansion:vehicles/spaceship/exits/restore_pilot_helmet

# when the pilot leaves the ship first make the other passenger the new pilot
execute if entity @s[tag=exp.spaceship_pilot] on vehicle on vehicle unless score @s exp.passenger_count matches 0 on passengers on passengers run function expansion:vehicles/spaceship/exits/assign_new_pilot

# run when this is the last player to leave the ship
execute on vehicle on vehicle if score @s exp.passenger_count matches 0 run function expansion:vehicles/spaceship/exits/pilot

# slow falling effect to make sure the player doesn't take accumulated fall damage
effect give @s slow_falling 1 1 true

# teleport the player next to the spaceship
execute on vehicle on vehicle at @s rotated ~ 0 on passengers on passengers run tp @s[tag=exp.exiting_ship,tag=exp.inside_spaceship] ^-2 ^ ^1 ~ ~

ride @s dismount

# remove basic player effects
function expansion:vehicles/spaceship/exits/remove_effects
