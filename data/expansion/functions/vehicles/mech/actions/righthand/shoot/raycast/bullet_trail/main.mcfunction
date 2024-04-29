scoreboard players add @s exp.timer_1 1

execute if score @s exp.timer_1 matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0f,50f],scale:[0.05f,0.05f,100f]}}

execute if score @s exp.timer_1 matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{translation:[0f,0f,70f],scale:[0f,0f,50f]}}

execute if score @s exp.timer_1 matches 10 run kill @s

