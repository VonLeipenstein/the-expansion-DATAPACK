# >>> generated function callers >>>
# Callers for expansion:utilities/math/cos
# Total callers: 4 from 3 source(s)
# Folder rule (function callers): 0/3 honored
# Sources:
# - function expansion:vehicles/buggy/propulsion/move (1 caller) [WARN side/down 5]
# - function expansion:vehicles/mech/propulsion/move (1 caller) [WARN side/down 5]
# - function expansion:vehicles/spaceship/propulsion/motion_calculation (2 callers) [WARN side/down 5]
# <<< generated function callers <<<

# just the sin but with 90(Pi/2) added to the angle
scoreboard players add #input exp.math 90
execute unless score #input exp.math matches ..180 run scoreboard players remove #input exp.math 180
function expansion:utilities/math/sin



