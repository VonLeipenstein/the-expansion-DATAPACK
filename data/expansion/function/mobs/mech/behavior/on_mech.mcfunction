# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/on_mech
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/mech/behavior/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# movement FSM (unless jumping)
function expansion:mobs/mech/behavior/movement/main
execute if score @s exp.counter_1 matches 1.. run function expansion:mobs/mech/behavior/movement/jumping

# health
function expansion:mobs/mech/health/main

# repair drones
execute if entity @s[tag=exp.mech_summoned_drones] run function expansion:mobs/mech/bots/main

# target an eligible entity occasionally, if you are not performing an attack
execute on passengers if entity @s[tag=exp.mech_targeter] run function expansion:mobs/mech/behavior/targeting/main

# give input for the currently held weapons if they are not in cooldown and if the target is in range
execute if predicate expansion:periodic/10 if function expansion:mobs/mech/behavior/targeting/has_target unless score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.left_arm_control] unless score @s exp.cooldown matches 1.. unless function expansion:mobs/mech/behavior/targeting/target_too_far run function expansion:vehicles/mech/actions/input
execute if predicate expansion:periodic/10 if function expansion:mobs/mech/behavior/targeting/has_target unless score @s exp.counter_2 matches 1.. on passengers if entity @s[tag=exp.right_arm_control] unless score @s exp.cooldown matches 1.. unless function expansion:mobs/mech/behavior/targeting/target_too_far run function expansion:vehicles/mech/actions/input

# remove cooldown after attacks
execute on passengers if entity @s[tag=exp.mech_arm_controller,scores={exp.cooldown=1..}] run scoreboard players remove @s exp.cooldown 1