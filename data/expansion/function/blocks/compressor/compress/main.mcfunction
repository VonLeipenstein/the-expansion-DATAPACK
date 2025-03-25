scoreboard players add @s exp.timer_1 1

# slow timer
scoreboard players operation #temp exp.timer_1 = @s exp.timer_1
scoreboard players operation #temp exp.timer_1 %= #5 exp.const

# add oxygen if oxygen is available
execute if score #temp exp.timer_1 matches 0 unless predicate expansion:dimension/oxygen_absent run function expansion:blocks/compressor/compress/insert_check
execute if score #temp exp.timer_1 matches 0 if predicate expansion:dimension/oxygen_absent on passengers if entity @s[type=interaction] if entity @s[tag=exp.inside_habitable_space] on vehicle run function expansion:blocks/compressor/compress/insert_check

# stop compressing
execute if score #temp exp.bool matches 1 run function expansion:blocks/compressor/compress/stop