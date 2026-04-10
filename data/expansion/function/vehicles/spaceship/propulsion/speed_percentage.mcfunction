# >>> generated function callers >>>
# Callers for expansion:vehicles/spaceship/propulsion/speed_percentage
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/drive (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/actionbar/main (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# calculate percentage of speed
scoreboard players operation #temp exp.math = @s exp.speed
scoreboard players operation #temp exp.math -= #offset exp.math
scoreboard players operation #temp exp.math *= #100 exp.const
scoreboard players reset #offset exp.math
return run scoreboard players operation #temp exp.math /= #total exp.math