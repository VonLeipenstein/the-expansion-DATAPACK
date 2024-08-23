execute if score @s exp.timer_2 matches 1.. run particle minecraft:flame ~ ~1 ~ 4 0.1 4 0 100
execute if score @s exp.timer_2 matches 1.. run particle minecraft:campfire_signal_smoke ~ ~1 ~ 4 2 4 0 20

execute if score @s exp.timer_2 matches 1.. run scoreboard players remove @s exp.timer_2 1

execute if score @s exp.timer_2 matches 220 run playsound expansion:rocket.launch player @a ~ ~ ~

title @p subtitle {"text":" "}
execute if score @s exp.timer_2 matches 220 run title @p[tag=exp.inside_rocket] title {"text":"10","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 200 run title @p[tag=exp.inside_rocket] title {"text":"9","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 180 run title @p[tag=exp.inside_rocket] title {"text":"8","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 160 run title @p[tag=exp.inside_rocket] title {"text":"7","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 140 run title @p[tag=exp.inside_rocket] title {"text":"6","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 120 run title @p[tag=exp.inside_rocket] title {"text":"5","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 100 run title @p[tag=exp.inside_rocket] title {"text":"4","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 80 run title @p[tag=exp.inside_rocket] title {"text":"3","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 60 run title @p[tag=exp.inside_rocket] title {"text":"2","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 40 run title @p[tag=exp.inside_rocket] title {"text":"1","color":"gold","bold":true}
execute if score @s exp.timer_2 matches 20 run title @p[tag=exp.inside_rocket] title {"text":"LAUNCH!","color":"gold","bold":true}

execute if score @s exp.timer_2 matches 0 run function expansion:vehicles/rocket/takeoff