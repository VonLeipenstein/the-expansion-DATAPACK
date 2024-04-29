execute at @s if score @s exp.random matches 1.. run tp @s ^ ^ ^ ~ ~.1
execute at @s if score @s exp.random matches ..-1 run tp @s ^ ^ ^ ~ ~-.1

execute if score @s exp.random matches 1.. run scoreboard players remove @s exp.random 1
execute if score @s exp.random matches ..-1 run scoreboard players add @s exp.random 1

execute unless score @s exp.random matches 0 run function expansion:vehicles/mech/actions/righthand/shoot/raycast/spread_y