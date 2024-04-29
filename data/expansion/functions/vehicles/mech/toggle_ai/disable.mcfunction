# move the cat to the front of the passenger stack to disable tarder AI
execute on passengers run tag @s add exp.mech_swapping_ai

execute at @s as @e[type=cat,tag=exp.mech_swapping_ai] run function expansion:vehicles/mech/toggle_ai/remount

# then mount the other previous passengers (interaction, AJ models)
execute at @s as @e[tag=exp.mech_swapping_ai,distance=..5] run function expansion:vehicles/mech/toggle_ai/remount
