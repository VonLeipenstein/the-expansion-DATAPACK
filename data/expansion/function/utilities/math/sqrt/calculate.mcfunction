# >>> generated function callers >>>
# Callers for expansion:utilities/math/sqrt/calculate
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:utilities/math/distance/calculate (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

## Credits to Triton365
# https://github.com/Triton365/fast_integer_sqrt/blob/main/functions/isqrt_noreturn.mcfunction

# INPUT: scoreboard players set #x sqrt <x>

execute store result score #t2 sqrt run scoreboard players operation #t1 sqrt = #x sqrt

execute if score #x sqrt matches 0..19310 run function expansion:utilities/math/sqrt/case1

execute if score #x sqrt matches 19311..1705544 run function expansion:utilities/math/sqrt/case2

execute if score #x sqrt matches 1705545..39400514 run function expansion:utilities/math/sqrt/case3

execute if score #x sqrt matches 39400515..455779650 run function expansion:utilities/math/sqrt/case4

execute if score #x sqrt matches 455779651..2147483647 run function expansion:utilities/math/sqrt/case5

scoreboard players operation #t2 sqrt /= #y sqrt
scoreboard players operation #y sqrt += #t2 sqrt
scoreboard players operation #y sqrt /= #2 sqrt
scoreboard players operation #x sqrt /= #y sqrt

execute if score #y sqrt > #x sqrt run scoreboard players remove #y sqrt 1

return run scoreboard players get #y sqrt