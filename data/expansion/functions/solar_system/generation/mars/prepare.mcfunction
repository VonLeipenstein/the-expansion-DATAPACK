scoreboard players reset #mars exp.timer_2
execute if score #mars exp.gen_success matches 0 run tp @s -1882 384 -1334 ~ 90
execute if score #mars exp.gen_success matches 0 run scoreboard players set #mars exp.timer_2 100
execute if score #mars exp.gen_success matches 1 run function expansion:solar_system/generation/venus/prepare
scoreboard players reset #mars exp.delay