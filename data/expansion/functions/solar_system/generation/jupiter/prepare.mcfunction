scoreboard players reset #jupiter exp.timer_2
execute if score #jupiter exp.gen_success matches 0 run tp @s -2873 384 1536 ~ 90
execute if score #jupiter exp.gen_success matches 0 run scoreboard players set #jupiter exp.timer_2 100
execute if score #jupiter exp.gen_success matches 1 run function expansion:solar_system/generation/europa/prepare
scoreboard players reset #jupiter exp.delay
