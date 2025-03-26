tag @s add exp.displaying_frame

execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[19.99,19.99,19.99]},interpolation_duration:5,start_interpolation:-1}