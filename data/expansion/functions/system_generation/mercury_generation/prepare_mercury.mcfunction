scoreboard players reset #mercury exp.timer_2
execute if score #mercury exp.gen_success matches 0 run tp @s 2448 384 -1605 ~ 90
execute if score #mercury exp.gen_success matches 0 run scoreboard players set #mercury exp.timer_2 100
execute if score #mercury exp.gen_success matches 1 run function expansion:system_generation/jupiter_generation/prepare_jupiter
scoreboard players reset #mercury exp.delay
