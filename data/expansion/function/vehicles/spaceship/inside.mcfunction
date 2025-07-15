## --- MOVEMENT AND ROTATION
# store spaceships position
execute if predicate expansion:periodic/2 run function expansion:utilities/store_pos_in_score
# Get speed value
execute store result score @s exp.speed run function expansion:vehicles/spaceship/propulsion/speed
# Functions when moving
execute unless score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/fly
# Functions when not moving for whatever reason
execute if score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/no_speed
# Manage ship rotation
function expansion:vehicles/spaceship/propulsion/rotation/main
# prevent the spaceship from going into the void
execute if score @s exp.y matches ..-60 run tp @s ~ -59 ~
# rotate the seat with the ship
execute at @s on passengers if entity @s[tag=exp.spaceship_seat] run rotate @s ~ 0

## --- MARKERS
# marker functions
execute if entity @s[tag=exp.has_active_markers] \
        if predicate expansion:periodic/10 on passengers \
        if entity @s[tag=exp.planet_marker] run function expansion:vehicles/spaceship/markers/markers

# deactivate the markers in any other dimension than space
execute if entity @s[tag=exp.has_active_markers] unless predicate expansion:dimension/space run function expansion:vehicles/spaceship/markers/deactivate_markers

## --- MISC.
# actionbar
function expansion:vehicles/spaceship/actionbar/main
# remove blaster cooldown
scoreboard players remove @s[scores={exp.counter_2=1..}] exp.counter_2 1