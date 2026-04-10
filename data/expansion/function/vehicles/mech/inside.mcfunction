# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/inside
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# when no input is given, but the mech is still walking, keep walking until the walking frame that is closest to the idle state
execute if function expansion:vehicles/mech/propulsion/should_stop_walking run function expansion:vehicles/mech/anim_control/signal_stop

# size changes
execute unless score @s exp.size_mod matches 0 run function expansion:vehicles/mech/size_change

# health
function expansion:vehicles/mech/health/main

# stats
function expansion:vehicles/mech/actionbar

# movement
execute if function expansion:vehicles/mech/propulsion/allowed rotated ~ 0 align y run function expansion:vehicles/mech/propulsion/drive

# Runs the same action logic for two different passengers which control the actions for each hand
execute on passengers if entity @s[tag=exp.left_arm_control,tag=exp.mech_action] run function expansion:vehicles/mech/actions/main
execute on passengers if entity @s[tag=exp.right_arm_control,tag=exp.mech_action] run function expansion:vehicles/mech/actions/main

# replenish jetpack fuel when on the ground, not maxed, and not jumping
execute unless score @s exp.fuel_level >= @s exp.fuel_max unless score @s exp.jump matches 1 if entity @s[nbt={OnGround:1b}] if predicate expansion:periodic/2 run scoreboard players add @s exp.fuel_level 1

# reset scores
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1
scoreboard players reset @s[scores={exp.warmup=1}] exp.warmup
scoreboard players reset @s[scores={exp.jump=1..}] exp.jump