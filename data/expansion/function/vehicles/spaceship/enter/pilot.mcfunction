# assign a pilot tag to the first player who enters
tag @p[tag=exp.clicked_ship] add exp.spaceship_pilot

# make the player ride the armor stand
execute on passengers store result entity @s[tag=exp.spaceship_seat] Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# change the model to the flying version of the spaceship
execute on passengers if entity @s[tag=exp.spaceship_display] run data remove entity @s item.components.minecraft:custom_model_data.strings[1]

# calculate the fuel percentage so the actionbar can show up
function expansion:utilities/fuel_percentage

# remove nogravity from leaving in space
data merge entity @s {NoGravity:0b}

# reset the motion storage in this function in case it corrupts for some weird reason. 
data merge storage expansion:motion {Motion:[0.0d,0.0d,0.0d]}

# Initialize the actionbar
function expansion:vehicles/spaceship/actionbar

# tags to regulate the mod station, make sure the ship is deselected
tag @s add exp.player_inside
tag @s remove exp.mod_vehicle
scoreboard players reset @s exp.unique_id