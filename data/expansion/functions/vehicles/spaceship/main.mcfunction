# wasd detection
execute if entity @s[tag=exp.spaceship_pilot] run function expansion:utilities/wasd_detection/mounted

# runs as the spaceship when a player is inside
execute on vehicle on vehicle run function expansion:vehicles/spaceship/inside

# exit the spaceship
execute unless entity @s[tag=exp.transitioning] unless entity @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] run function expansion:vehicles/spaceship/exits/passenger

# transitioning between planets
execute if entity @s[tag=exp.transitioning] run function expansion:vehicles/spaceship/transition/check

# store players position
function expansion:global/position
