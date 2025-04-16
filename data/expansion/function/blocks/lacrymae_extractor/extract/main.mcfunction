# Stop extraction if conditions are broken
execute unless function expansion:blocks/lacrymae_extractor/check_valid run return run scoreboard players reset @s exp.timer_1

# Finish extraction if the timer runs out
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/lacrymae_extractor/extract/finish

# top particles
particle minecraft:falling_obsidian_tear ~ ~1.3 ~ 0.15 0.15 0.15 0 2

# sound loop
scoreboard players remove @s exp.timer_2 1
execute unless score @s exp.timer_2 matches 1.. run playsound expansion:extractor.hum block @a ~ ~ ~ 0.2 1 0
execute unless score @s exp.timer_2 matches 1.. run scoreboard players set @s exp.timer_2 19

# decrease score
scoreboard players remove @s exp.timer_1 1
