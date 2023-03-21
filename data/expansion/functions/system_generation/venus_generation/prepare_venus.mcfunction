scoreboard players reset #venus exp.timer_2
execute if score #venus exp.gen_success matches 0 run tp @s 1358 384 1741 ~ -90
execute if score #venus exp.gen_success matches 0 run scoreboard players set #venus exp.timer_2 100
execute if score #venus exp.gen_success matches 1 run function expansion:system_generation/jupiter_generation/prepare_jupiter
scoreboard players reset #venus exp.delay