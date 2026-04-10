# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/convert_to_capsule/display
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/convert_to_capsule/root (1 caller) [OK same-folder]
# <<< generated function callers <<<

data merge entity @s {item_display:"none",transformation:{scale:[2.7,2.7,2.7],translation:[0.0,1.4,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

loot replace entity @s container.0 loot expansion:vehicles/return_capsule

tag @s add exp.module_display
tag @s remove exp.rocket_display