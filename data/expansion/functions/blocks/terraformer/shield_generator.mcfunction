execute unless block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:jigsaw",tag:{tree_button:1b,gui_item:1b}}]} run function expansion:blocks/terraformer/buttons/tree_button_push
execute unless block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:jigsaw",tag:{cube_button:1b,gui_item:1b}}]} run function expansion:blocks/terraformer/buttons/cube_button_push
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b,id:"minecraft:jigsaw",tag:{particle_button:1b,gui_item:1b}}]} run function expansion:blocks/terraformer/buttons/particle_button_push

tp @s[scores={exp.counter_1=0}] ~ ~ ~ ~7 ~

execute if score @s exp.counter_1 matches 0 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/sphere_mode
execute if score @s exp.counter_1 matches 1 positioned ~ ~0.5 ~ run function expansion:blocks/terraformer/cube_mode

scoreboard players add @s exp.timer_1 1
execute if score @s exp.bool matches 1 if predicate expansion:dimension/mars run function expansion:blocks/terraformer/terraformers/mars_terraformer
execute if score @s exp.bool matches 1 if predicate expansion:dimension/moon run function expansion:blocks/terraformer/terraformers/moon_terraformer
scoreboard players set @s[scores={exp.timer_1=10..}] exp.timer_1 0

execute if entity @p[distance=..5.1] run function expansion:blocks/terraformer/gui