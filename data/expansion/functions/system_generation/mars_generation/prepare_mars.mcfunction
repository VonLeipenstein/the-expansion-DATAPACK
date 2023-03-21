scoreboard players reset #mars exp.timer_2
execute if score #mars exp.gen_success matches 0 run tp @s -1882 384 -1334 ~ -90
execute if score #mars exp.gen_success matches 0 run scoreboard players set #mars exp.timer_2 100
execute if score #mars exp.gen_success matches 1 run function expansion:system_generation/venus_generation/prepare_venus
scoreboard players reset #mars exp.delay