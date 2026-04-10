# >>> generated function callers >>>
# Callers for expansion:blocks/portal/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/portal/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

# give the portal a custom id (not used for teleportation)
scoreboard players add #portal_id exp.unique_id 1
scoreboard players operation @s exp.unique_id = #portal_id exp.unique_id

# align the portal with the placers view
function expansion:blocks/set_rotation

# setup the item displays and interactions
execute rotated as @s on passengers run function expansion:blocks/portal/place/setup_ports

# place barriers
execute rotated as @s run fill ^-1 ^ ^ ^1 ^ ^ minecraft:barrier keep
