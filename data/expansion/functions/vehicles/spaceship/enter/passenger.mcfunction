# add tags to the player to be able to detect if they are inside the spaceship, 
tag @p add exp.inside_spaceship
tag @p add exp.inside_vehicle

# keep track of the number of passengers and assign the first one a separate tag
scoreboard players add @s exp.passenger_count 1

# remove tags from the player. rising and falling regulate the zero gravity environment
function expansion:items/magnetic_boots/floor_check/remove_tags

# dismiss the pet drone if it was active
execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/dismiss

# align the rotation of the player with the spaceship
execute rotated as @s run tp @p ^ ^ ^ ~ ~

# mount the spaceship
execute on passengers run ride @p mount @s[type=minecraft:armor_stand,tag=exp.spaceship_display]

# reset the interaction entity
execute on passengers run data remove entity @s[type=minecraft:interaction] interaction

# runs only the first time a player enters the ship
execute if score @s exp.passenger_count matches 1 run function expansion:vehicles/spaceship/enter/pilot

# invisibility for passengers
effect give @p[tag=exp.inside_spaceship,tag=!exp.spaceship_pilot] invisibility infinite 1 true
