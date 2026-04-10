# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/convert_to_module/display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/rocket/convert_to_module/root (1 caller) [OK same-folder]
# <<< generated function callers <<<

data merge entity @s {transformation:{translation:[0.0f,1f,0.0f],scale:[0.62f,0.62f,0.62f],left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,1f,0f]}}

loot replace entity @s container.0 loot expansion:vehicles/lunar_module

tag @s add exp.module_display
tag @s remove exp.rocket_display