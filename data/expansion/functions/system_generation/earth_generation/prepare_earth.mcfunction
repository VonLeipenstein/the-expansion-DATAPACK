scoreboard players reset #earth exp.timer_2
execute if score #earth exp.gen_success matches 0 run tp @s 0 384 0 ~ 90
execute if score #earth exp.gen_success matches 0 run scoreboard players set #earth exp.timer_2 100
execute if score #earth exp.gen_success matches 1 run function expansion:system_generation/moon_generation/prepare_moon
scoreboard players reset #earth exp.delay

gamemode spectator
