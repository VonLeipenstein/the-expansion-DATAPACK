tag @s add exp.displaying_frame

execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[20.99,20.99,20.99]},interpolation_duration:5,start_interpolation:-1}