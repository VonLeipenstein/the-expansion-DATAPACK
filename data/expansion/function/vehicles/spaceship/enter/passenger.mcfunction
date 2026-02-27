# add tags to the player to be able to detect if they are inside the spaceship, 
tag @p[tag=exp.clicked] add exp.inside_spaceship
tag @p[tag=exp.clicked] add exp.inside_vehicle

# remove tags from the player. rising and falling regulate the zero gravity environment
function expansion:items/magnetic_boots/floor_check/remove_tags

# dismiss the pet drone if it was active
execute as @p[tag=exp.has_active_drone,tag=exp.clicked] run function expansion:mobs/drone_pet/force_dismiss

# align the rotation of the player with the spaceship
execute rotated as @s run rotate @p[tag=exp.clicked] ~ ~

# mount the spaceship
execute on passengers run ride @p[tag=exp.clicked] mount @s[tag=exp.spaceship_seat]

# reset the interaction entity
execute on passengers run data remove entity @s[type=minecraft:interaction] interaction

# runs only the first time a player enters the ship
execute unless score @s exp.passenger_count matches 1.. run function expansion:vehicles/spaceship/enter/pilot

# keep track of the number of passengers and assign the first one a separate tag
scoreboard players add @s exp.passenger_count 1

# invisibility for passengers
effect give @p[tag=exp.inside_spaceship,tag=!exp.spaceship_pilot,tag=exp.clicked] invisibility infinite 1 true