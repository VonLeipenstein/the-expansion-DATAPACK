# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/fuel/table
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket_segment/fuel/calculate (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if dimension minecraft:overworld if score #target exp.dimension matches 1 run return 16
execute if dimension minecraft:overworld if score #target exp.dimension matches 2 run return 48
execute if dimension minecraft:overworld if score #target exp.dimension matches 3 run return 48

execute if dimension expansion:moon if score #target exp.dimension matches 0 run return 16
execute if dimension expansion:moon if score #target exp.dimension matches 2 run return 48
execute if dimension expansion:moon if score #target exp.dimension matches 3 run return 48

execute if dimension expansion:mars if score #target exp.dimension matches 0 run return 48
execute if dimension expansion:mars if score #target exp.dimension matches 1 run return 48
execute if dimension expansion:mars if score #target exp.dimension matches 3 run return 96

execute if dimension expansion:venus if score #target exp.dimension matches 0 run return 48
execute if dimension expansion:venus if score #target exp.dimension matches 1 run return 48
execute if dimension expansion:venus if score #target exp.dimension matches 2 run return 96