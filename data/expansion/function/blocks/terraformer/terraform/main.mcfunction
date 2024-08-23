scoreboard players set @s[scores={exp.timer_1=10..}] exp.timer_1 0
scoreboard players add @s exp.timer_1 1

execute if score @s exp.timer_1 matches 10.. if score @s exp.counter_1 matches 0 summon minecraft:marker run function expansion:blocks/terraformer/terraform/sphere
execute if score @s exp.timer_1 matches 10.. if score @s exp.counter_1 matches 1 summon minecraft:marker run function expansion:blocks/terraformer/terraform/cube
