execute at @s store result score @s exp.y run function expansion:utilities/altitude/cast

particle campfire_signal_smoke ~ ~ ~ 0 0 0 0.01 2 force
particle flame ~ ~ ~ 0 0 0 0.01 5 force

execute if score @s exp.y matches 100.. run data merge entity @s {Motion:[0.0,-5.0,0.0]}
execute if score @s exp.y matches ..100 run data merge entity @s {Motion:[0.0,-4.0,0.0]}
execute if score @s exp.y matches ..70 run data merge entity @s {Motion:[0.0,-3.0,0.0]}
execute if score @s exp.y matches ..30 run data merge entity @s {Motion:[0.0,-2.0,0.0]}
execute if score @s exp.y matches ..16 run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute if score @s exp.y matches ..8 run data merge entity @s {Motion:[0.0,-0.5,0.0]}
execute if score @s exp.y matches ..4 run data merge entity @s {Motion:[0.0,-0.1,0.0]}
execute if score @s exp.y matches ..2 run data merge entity @s {Motion:[0.0,-0.05,0.0]}

execute at @s unless block ~ ~-0.1 ~ #air if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/rocket_segment/landing/touchdown