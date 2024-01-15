# wasd detection
function expansion:utilities/wasd_detection/mounted

# make the player exit the mech when it is no longer mounted
execute unless predicate expansion:nbt_checks/root_vehicle/mech run function expansion:vehicles/mech/exit/init

# runs as the base entity while the player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/mech/inside
