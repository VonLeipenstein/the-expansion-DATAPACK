# >>> generated function callers >>>
# Callers for expansion:mechanics/events/moon_study/charge
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mechanics/events/moon_study/calculation (1 caller) [OK same-folder]
# <<< generated function callers <<<

# increment timer
scoreboard players add @s exp.timer_1 1

scoreboard players operation #temp exp.time = @s exp.timer_1
scoreboard players operation #temp exp.time %= #80 exp.const

execute unless score #temp exp.time matches 0 run return fail

# display stages of the study
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5
execute if score @s exp.timer_1 matches 0 run tellraw @s [{translate:"exp_moonstudy_1"}]
execute if score @s exp.timer_1 matches 80 run tellraw @s [{translate:"exp_moonstudy_2"}]
execute if score @s exp.timer_1 matches 160 run tellraw @s [{translate:"exp_moonstudy_3"}]
execute if score @s exp.timer_1 matches 240 run tellraw @s [{translate:"exp_moonstudy_4"}]
execute if score @s exp.timer_1 matches 320 run tellraw @s [{translate:"exp_moonstudy_5"}]
