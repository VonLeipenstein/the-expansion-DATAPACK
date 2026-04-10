# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/rotation/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/spaceship/inside (1 caller) [OK above +2]
# <<< generated function callers <<<

# Store the players rotation inside a marker
execute unless entity @s[tag=exp.ignore_player_rotation] on passengers if entity @s[tag=exp.player_rotation] run function expansion:vehicles/spaceship/propulsion/rotation/player

# rotate the ships root and rotation marker with the players rotation
execute on passengers if entity @s[tag=exp.player_rotation] at @s on vehicle \
        positioned ^ ^ ^4 rotated as @s \
        positioned ^ ^ ^40 facing entity @s eyes \
        facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~

# Get the ships desired pitch, yaw and roll
function expansion:vehicles/spaceship/propulsion/rotation/get_euler_angles

# Manage display rotation
execute on passengers if entity @s[tag=exp.spaceship_display] run function expansion:vehicles/spaceship/propulsion/rotation/model