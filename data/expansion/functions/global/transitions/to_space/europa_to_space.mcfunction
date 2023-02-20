#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s -3437 512 1755 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s -3437 512 1515 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s -3677 512 1755 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s -3677 512 1515 135 0
