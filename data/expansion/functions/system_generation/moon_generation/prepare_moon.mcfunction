scoreboard players reset #moon exp.timer_2
execute if score #moon exp.gen_success matches 0 run tp @s -621 384 126 ~ -90
execute if score #moon exp.gen_success matches 0 run scoreboard players set #moon exp.timer_2 100
execute if score #moon exp.gen_success matches 1 run function expansion:system_generation/mars_generation/prepare_mars
scoreboard players reset #moon exp.delay
