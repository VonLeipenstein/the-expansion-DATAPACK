execute unless score @s exp.rboots_cooldown matches 120.. run scoreboard players add @s exp.rboots_cooldown 1

execute if score @s exp.rboots_cooldown matches ..95 run function expansion:items/rocket_boots/ascend

execute if score @s exp.rboots_cooldown matches 75.. run function expansion:items/rocket_boots/slow_beep

tag @s add exp.boosting
