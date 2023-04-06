scoreboard players reset #europa exp.timer_2
execute if score #europa exp.gen_success matches 0 run tp @s -3557 384 1635 ~ 90
execute if score #europa exp.gen_success matches 0 run scoreboard players set #europa exp.timer_2 100
execute if score #europa exp.gen_success matches 1 run function expansion:system_generation/finish_generation
scoreboard players reset #europa exp.delay
