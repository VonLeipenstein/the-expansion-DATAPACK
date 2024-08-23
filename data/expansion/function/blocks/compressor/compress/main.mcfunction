scoreboard players add @s exp.timer_1 1

# slow timer
scoreboard players operation #temp exp.timer_1 = @s exp.timer_1
scoreboard players operation #temp exp.timer_1 %= #5 exp.const

# add oxygen if oxygen is available
execute if score #temp exp.timer_1 matches 0 unless predicate expansion:dimension/oxygen_absent as @e[type=minecraft:item_display,tag=exp.compressor_display,distance=..1.5,limit=1,sort=nearest] run function expansion:blocks/compressor/compress/insert_check
execute if score #temp exp.timer_1 matches 0 if predicate expansion:dimension/oxygen_absent if entity @s[tag=exp.has_oxygen] as @e[type=minecraft:item_display,tag=exp.compressor_display,distance=..1.5,limit=1,sort=nearest] run function expansion:blocks/compressor/compress/insert_check

# stop compressing
execute if score #temp exp.bool matches 1 run function expansion:blocks/compressor/compress/stop