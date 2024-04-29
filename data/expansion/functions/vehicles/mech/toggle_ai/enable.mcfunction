execute on passengers run tag @s[type=cat,tag=exp.mech_seat] add exp.mech_swapping_ai

# make sure the cat is at the back of the passenger stack to enable trader AI
execute at @s as @e[type=cat,tag=exp.mech_swapping_ai] run function expansion:vehicles/mech/toggle_ai/remount

