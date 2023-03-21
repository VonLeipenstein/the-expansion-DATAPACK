#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s 2568 128 -1485 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s 2568 128 -1725 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s 2328 128 -1485 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s 2328 128 -1725 135 0
