#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s -1762 128 -1214 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s -1762 128 -1454 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s -2002 128 -1214 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s -2002 128 -1454 135 0

