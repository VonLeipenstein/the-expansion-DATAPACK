#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s -501 512 246 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s -501 512 6 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s -741 512 246 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s -741 512 6 135 0
