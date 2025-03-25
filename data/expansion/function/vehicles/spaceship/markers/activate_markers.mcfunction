execute on passengers if entity @s[tag=exp.planet_marker] run function expansion:vehicles/spaceship/markers/show_marker

execute on passengers if entity @s[tag=exp.planet_marker] run data merge entity @s {transformation:{translation:[0.0,1.0,0.6]},interpolation_duration:5,start_interpolation:-1}

tag @s add exp.has_active_markers