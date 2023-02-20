# store player x rotation
execute store result score @s exp.value run data get entity @s Rotation[1] 1000
# store current time
execute store result score @s exp.time run time query daytime
scoreboard players operation @s exp.time *= #1000 exp.const

# calculate player angle ratio
scoreboard players set @s exp.hold_value -1
scoreboard players operation @s exp.value *= @s exp.hold_value
scoreboard players set @s exp.hold_value 15000
scoreboard players operation @s exp.value -= @s exp.hold_value
# correct the player rotation for the second half of the night where the moon is weird because of minecrafts weird rotation
execute if entity @s[y_rotation=0..-180] run function expansion:items/expansion_guides/guide1/correction
scoreboard players set @s exp.hold_value 150
scoreboard players operation @s exp.value /= @s exp.hold_value

# calculate moon angle ratio
scoreboard players set @s exp.hold_value 13700000
scoreboard players operation @s exp.time -= @s exp.hold_value
scoreboard players set @s exp.hold_value 86
scoreboard players operation @s exp.time /= @s exp.hold_value

# divide the ratio's and see if they are approximately equal
execute store result score @s exp.hold_value run scoreboard players operation @s exp.time /= @s exp.value
scoreboard players set @s exp.value 110
scoreboard players set @s exp.time 90
execute if score @s exp.hold_value >= @s exp.time if score @s exp.hold_value <= @s exp.value run scoreboard players set @s exp.bool 1

# play a charge effect every second.
scoreboard players set @s exp.value 80
scoreboard players operation @s exp.time = @s exp.timer_1
scoreboard players operation @s exp.time %= @s exp.value
execute if score @s exp.bool matches 1 if score @s exp.time matches 0 run function expansion:items/expansion_guides/guide1/charge

# increment timer
execute if score @s exp.bool matches 1 run scoreboard players add @s exp.timer_1 1

# give the guide if the timer is full
execute if score @s exp.timer_1 matches 400 run function expansion:items/expansion_guides/guide1/summon_guide1

# reset all used scoreboards
scoreboard players reset @s exp.hold_value
scoreboard players reset @s exp.time
scoreboard players reset @s exp.value
