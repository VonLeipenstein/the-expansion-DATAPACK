# change the return location for the nether because of dimension scale 8
execute if score #temp exp.dim_test matches -1 run scoreboard players operation #temp exp.x *= #8 exp.const
execute if score #temp exp.dim_test matches -1 run scoreboard players operation #temp exp.z *= #8 exp.const

# merge the return position to the transporter
execute store result entity @s Pos[0] double 1 run scoreboard players get #temp exp.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp exp.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp exp.z

# tp player to origin armor stand
execute if score #temp exp.dim_test matches -2 at @s in minecraft:the_end run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches -1 at @s in minecraft:the_nether run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 0 at @s in minecraft:overworld run tp @p ~.5 ~ ~.5

execute if score #temp exp.dim_test matches 1 at @s in expansion:moon run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 2 at @s in expansion:mars run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 3 at @s in expansion:venus run tp @p ~.5 ~ ~.5
#execute if score #temp exp.dim_test matches 4 at @s in expansion:mercury run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 5 at @s in expansion:jupiter run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 6 at @s in expansion:europa run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 7 at @s in expansion:space run tp @p ~.5 ~ ~.5
execute if score #temp exp.dim_test matches 8 at @s in expansion:asteroids run tp @p ~.5 ~ ~.5

# sound
playsound entity.lightning_bolt.impact player @a ~ ~ ~

kill @s

