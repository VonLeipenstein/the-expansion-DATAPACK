#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] -3437 128 1755 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] -3437 128 1515 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] -3677 128 1755 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] -3677 128 1515 135 0
