data merge entity @s {transformation:{scale:[0.1,0.1,0.1]},interpolation_duration:5,start_interpolation:-1}

execute on passengers run data merge entity @s {transformation:{translation:[0.0,0.91,0.6],scale:[-0.1,0.1,-0.1]},text:[{text:"",color: "green"},{score:{name:"@s",objective:"exp.distance"}}],interpolation_duration:5,start_interpolation:-1}

tag @s add exp.highlighted_marker
