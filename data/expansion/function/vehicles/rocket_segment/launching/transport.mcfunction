tag @s remove exp.launching

tag @s add exp.landing

scoreboard players reset #temp exp.dimension
execute if dimension minecraft:overworld run scoreboard players set #temp exp.dimension 0
execute if dimension expansion:moon run scoreboard players set #temp exp.dimension 1
execute if dimension expansion:mars run scoreboard players set #temp exp.dimension 2
execute if dimension expansion:venus run scoreboard players set #temp exp.dimension 3

execute if score @s exp.dimension matches 0 in minecraft:overworld run tp @s ~ 500 ~
execute if score @s exp.dimension matches 1 in expansion:moon run tp @s ~ 500 ~
execute if score @s exp.dimension matches 2 in expansion:mars run tp @s ~ 500 ~
execute if score @s exp.dimension matches 3 in expansion:venus run tp @s ~ 500 ~

scoreboard players operation @s exp.dimension = #temp exp.dimension
scoreboard players reset #temp exp.dimension