# >>> generated function callers >>>
# Callers for expansion:items/transporter/save_dimension
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:items/transporter/transport (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if predicate expansion:dimension/the_end run scoreboard players set @s exp.dim_test -2
execute if predicate expansion:dimension/the_nether run scoreboard players set @s exp.dim_test -1
execute if predicate expansion:dimension/overworld run scoreboard players set @s exp.dim_test 0
execute if predicate expansion:dimension/moon run scoreboard players set @s exp.dim_test 1
execute if predicate expansion:dimension/mars run scoreboard players set @s exp.dim_test 2
execute if predicate expansion:dimension/venus run scoreboard players set @s exp.dim_test 3
#execute if predicate expansion:dimension/mercury run scoreboard players set @s exp.dim_test 4
execute if predicate expansion:dimension/jupiter run scoreboard players set @s exp.dim_test 5
execute if predicate expansion:dimension/europa run scoreboard players set @s exp.dim_test 6
execute if predicate expansion:dimension/space run scoreboard players set @s exp.dim_test 7
execute if predicate expansion:dimension/asteroids run scoreboard players set @s exp.dim_test 8
execute if predicate expansion:dimension/storage run scoreboard players set @s exp.dim_test 9

execute store result score @s exp.x run data get entity @s Pos[0] 1
execute store result score @s exp.y run data get entity @s Pos[1] 1
execute store result score @s exp.z run data get entity @s Pos[2] 1
