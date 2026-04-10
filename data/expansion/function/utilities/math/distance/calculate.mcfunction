# >>> generated function callers >>>
# Callers for expansion:utilities/math/distance/calculate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/spaceship/markers/distance_to_planet (1 caller) [WARN side/down 6]
# <<< generated function callers <<<

# INPUT: 
# scoreboard players set #x1 exp.math <x1>
# scoreboard players set #x2 exp.math <x2>
# scoreboard players set #y1 exp.math <y1>
# scoreboard players set #y2 exp.math <y2>
# scoreboard players set #z1 exp.math <z1>
# scoreboard players set #z2 exp.math <z2>

scoreboard players operation #x2 exp.math -= #x1 exp.math
scoreboard players operation #x2 exp.math *= #x2 exp.math

scoreboard players operation #y2 exp.math -= #y1 exp.math
scoreboard players operation #y2 exp.math *= #y2 exp.math

scoreboard players operation #z2 exp.math -= #z1 exp.math
scoreboard players operation #z2 exp.math *= #z2 exp.math

scoreboard players operation #x2 exp.math += #y2 exp.math
scoreboard players operation #x2 exp.math += #z2 exp.math

scoreboard players operation #x sqrt = #x2 exp.math
return run function expansion:utilities/math/sqrt/calculate