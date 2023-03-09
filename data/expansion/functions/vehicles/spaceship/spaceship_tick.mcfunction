function expansion:utilities/wasd_detection/mounted
execute on vehicle on vehicle run function expansion:vehicles/spaceship/inside
execute unless entity @s[tag=exp.transitioning] unless entity @s[predicate=expansion:nbt_checks/root_vehicle/spaceship] run function expansion:vehicles/spaceship/exits/exit

execute if entity @s[tag=exp.transitioning] run function expansion:vehicles/spaceship/transition/finish

# store players position
function expansion:global/position
