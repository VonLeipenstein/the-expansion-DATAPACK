#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s 1478 128 1861 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s 1478 128 1621 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s 1238 128 1861 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s 1238 128 1621 135 0