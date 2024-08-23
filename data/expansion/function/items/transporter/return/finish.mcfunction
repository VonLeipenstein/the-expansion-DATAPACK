# change the return location for the nether because of dimension scale 8
execute if score #temp exp.dim_test matches -1 run scoreboard players operation #temp exp.x *= #8 exp.const
execute if score #temp exp.dim_test matches -1 run scoreboard players operation #temp exp.z *= #8 exp.const

# merge the return position to the transporter
execute store result entity @s Pos[0] double 1 run scoreboard players get #temp exp.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #temp exp.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #temp exp.z

# tp player to origin armor stand
execute at @s as @p run function expansion:items/transporter/return/tp_player

# sound
playsound entity.lightning_bolt.impact player @a ~ ~ ~

# kill transporter armor stand
kill @s