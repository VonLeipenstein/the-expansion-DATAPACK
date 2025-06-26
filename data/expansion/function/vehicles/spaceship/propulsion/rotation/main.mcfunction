# Store the players rotation inside a marker
execute unless entity @s[tag=exp.ignore_player_rotation] on passengers if entity @s[tag=exp.player_rotation] run function expansion:vehicles/spaceship/propulsion/rotation/player

# Get the ships desired pitch, yaw and roll
function expansion:vehicles/spaceship/propulsion/rotation/get_euler_angles

# Manage display rotation
execute on passengers if entity @s[type=item_display,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/propulsion/rotation/model