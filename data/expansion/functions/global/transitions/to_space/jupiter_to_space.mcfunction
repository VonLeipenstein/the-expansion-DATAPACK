#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s -2753 512 1656 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s -2753 512 1416 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s -2993 512 1656 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s -2993 512 1416 135 0
