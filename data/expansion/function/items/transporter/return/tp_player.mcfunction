# >>> generated function callers >>>
# Callers for expansion:items/transporter/return/tp_player
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/return/finish (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score #temp exp.dim_test matches -2 in minecraft:the_end run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches -1 in minecraft:the_nether run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 0 in minecraft:overworld run tp @s ~.5 ~ ~.5

execute if score #temp exp.dim_test matches 1 in expansion:moon run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 2 in expansion:mars run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 3 in expansion:venus run tp @s ~.5 ~ ~.5
#execute if score #temp exp.dim_test matches 4 in expansion:mercury run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 5 in expansion:jupiter run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 6 in expansion:europa run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 7 in expansion:space run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 8 in expansion:asteroids run tp @s ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 9 in expansion:storage run tp @s ~.5 ~ ~.5

execute if score #temp exp.dim_test matches 9 run function expansion:items/transporter/message