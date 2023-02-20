scoreboard players set @s[scores={exp.timer_2=7..}] exp.timer_2 0
execute if score @s exp.timer_2 matches 0 run playsound expansion:rboots.beep player @s ~ ~-2 ~
scoreboard players add @s exp.timer_2 1

execute if score @s exp.rboots_cooldown matches 96.. run scoreboard players add @s exp.timer_2 1

execute if score @s exp.rboots_cooldown matches 95 run function expansion:items/rocket_boots/turn_off