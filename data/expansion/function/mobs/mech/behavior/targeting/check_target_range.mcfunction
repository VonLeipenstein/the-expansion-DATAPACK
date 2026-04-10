# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/targeting/check_target_range
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:mobs/mech/behavior/targeting/target_in_range (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_too_close (1 caller) [OK same-folder]
# - function expansion:mobs/mech/behavior/targeting/target_too_far (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players reset #temp exp.distance

# run the check at once if this entity is already an arm
execute if entity @s[tag=exp.mech_arm_controller] store result score #temp exp.distance run function expansion:mobs/mech/behavior/targeting/target_range_for_arm

# Check for a random arm if this is run as the root
execute store result score #temp exp.math run random value 1..2
execute if score #temp exp.math matches 1 on passengers if entity @s[tag=exp.left_arm_control] store result score #temp exp.distance run function expansion:mobs/mech/behavior/targeting/target_range_for_arm
execute if score #temp exp.math matches 2 on passengers if entity @s[tag=exp.right_arm_control] store result score #temp exp.distance run function expansion:mobs/mech/behavior/targeting/target_range_for_arm
