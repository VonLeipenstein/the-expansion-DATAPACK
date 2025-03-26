tag @s remove exp.displaying_frame

execute on passengers if entity @s[tag=exp.wireframe_display] run data merge entity @s {transformation:{scale:[0,0,0]},interpolation_duration:5,start_interpolation:-1}
