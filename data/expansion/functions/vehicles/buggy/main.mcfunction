# wasd detection
function expansion:utilities/wasd_detection/mounted

# runs as the vehicle when a player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/buggy/inside

# runs when the player exits the vehicle
execute unless predicate expansion:nbt_checks/root_vehicle/buggy run function expansion:vehicles/buggy/exit
