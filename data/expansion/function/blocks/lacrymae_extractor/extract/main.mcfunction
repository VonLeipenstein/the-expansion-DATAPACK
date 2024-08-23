scoreboard players add @s exp.timer_1 1
execute if score @s exp.timer_1 matches 400.. run function expansion:blocks/lacrymae_extractor/extract/finish

particle minecraft:falling_obsidian_tear ~ ~1.3 ~ 0.15 0.15 0.15 0 2

scoreboard players remove @s exp.timer_2 1
execute unless score @s exp.timer_2 matches 1.. run playsound expansion:extractor.hum block @a ~ ~ ~ 0.2 1 0
execute unless score @s exp.timer_2 matches 1.. run scoreboard players set @s exp.timer_2 19
