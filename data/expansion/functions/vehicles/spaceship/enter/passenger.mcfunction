# add tags to the player to be able to detect if they are inside the spaceship, 
tag @p[tag=exp.clicked_ship] add exp.inside_spaceship
tag @p[tag=exp.clicked_ship] add exp.inside_vehicle

# remove tags from the player. rising and falling regulate the zero gravity environment
function expansion:items/magnetic_boots/floor_check/remove_tags

# dismiss the pet drone if it was active
execute as @p[tag=exp.has_active_drone,tag=exp.clicked_ship] run function expansion:items/drone_pet/force_dismiss

# align the rotation of the player with the spaceship
execute rotated as @s run tp @p[tag=exp.clicked_ship] ^ ^ ^ ~ ~

# mount the spaceship
execute on passengers run ride @p[tag=exp.clicked_ship] mount @s[type=minecraft:armor_stand,tag=exp.spaceship_display]

# reset the interaction entity
execute on passengers run data remove entity @s[type=minecraft:interaction] interaction

# runs only the first time a player enters the ship
execute unless score @s exp.passenger_count matches 1.. run function expansion:vehicles/spaceship/enter/pilot

# store the helmet of the player inside the storage. 
# this obscure thing is done so the view isn't obstructed by helmets if multiple players are inside the spaceship
execute on passengers if entity @s[type=armor_stand] run function expansion:vehicles/spaceship/enter/store_helmet

# keep track of the number of passengers and assign the first one a separate tag
scoreboard players add @s exp.passenger_count 1

# invisibility for passengers
effect give @p[tag=exp.inside_spaceship,tag=!exp.spaceship_pilot,tag=exp.clicked_ship] invisibility infinite 1 true

say enter