tag @s add exp.clicked

# push a button determined by the rotation of the player.
execute if entity @s[tag=exp.rocket_pilot] if entity @s[y_rotation=70..110,x_rotation=12..55] run function expansion:vehicles/rocket/click_detection/buttons/fuel_button_push
execute if entity @s[tag=exp.rocket_pilot] if entity @s[y_rotation=-110..-70,x_rotation=12..55] run function expansion:vehicles/rocket/click_detection/buttons/launch_button_push

# remove the possible advancements triggering this
advancement revoke @s only expansion:utility/rocket_button_l
advancement revoke @s only expansion:utility/rocket_button_r

tag @s remove exp.clicked
