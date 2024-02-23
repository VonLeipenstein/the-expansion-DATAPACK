# wasd detection
function expansion:utilities/wasd_detection/mounted

# give the player speed to increase the FOV
effect give @s speed 1 5 true
# teleport items to the pilots inventory
execute positioned ~ ~-2 ~ run tp @e[type=item,distance=..4,limit=5] @s
# make torso rotate with the player
execute anchored eyes rotated as @s on vehicle on vehicle positioned as @s on passengers if entity @s[tag=!aj.mech_legs.root] positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ 0

# make the player exit the mech when it is no longer mounted
execute unless predicate expansion:nbt_checks/root_vehicle/mech run function expansion:vehicles/mech/exit/init

# runs as the base entity while the player is inside
execute on vehicle on vehicle at @s run function expansion:vehicles/mech/inside


