# >>> generated function callers >>>
# Callers for expansion:mechanics/events/moon_study/calculation
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/events/moon_study/check (1 caller) [OK same-folder]
# <<< generated function callers <<<

# store player x rotation
execute store result score #temp exp.rotation run data get entity @s Rotation[1] 1000
# store current time
execute store result score #temp exp.time run time query daytime
scoreboard players operation #temp exp.time *= #1000 exp.const

# calculate player angle ratio
scoreboard players operation #temp exp.rotation *= #-1 exp.const
scoreboard players remove #temp exp.rotation 15000
# correct the player rotation for the second half of the night where the moon is weird because of minecrafts weird rotation
execute if entity @s[y_rotation=0..-180] run function expansion:mechanics/events/moon_study/correction
scoreboard players operation #temp exp.rotation /= #150 exp.const

# calculate moon angle ratio
scoreboard players remove #temp exp.time 13700000
scoreboard players operation #temp exp.time /= #86 exp.const

# play a charge effect every second.
execute if function expansion:mechanics/events/moon_study/within_margin run function expansion:mechanics/events/moon_study/charge

# give the guide if the timer is full
execute if score @s exp.timer_1 matches 400 run function expansion:mechanics/events/moon_study/summon

# reset all used scoreboards
scoreboard players reset #temp exp.time
scoreboard players reset #temp exp.rotation