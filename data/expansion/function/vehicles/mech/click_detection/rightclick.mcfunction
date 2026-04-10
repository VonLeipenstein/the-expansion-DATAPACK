# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/click_detection/rightclick
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/0 honored
# Sources:
# - advancement expansion:utility/mech_rc (1 caller)
# <<< generated function callers <<<

# execute the righthands action if the player is already inside the mech
execute if predicate expansion:riding/mech on vehicle on vehicle on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/input

# enter the mech if the player is not already inside the mech
tag @s add exp.attempt_mount
execute unless predicate expansion:riding/mech unless predicate expansion:utility/sneak positioned ^ ^ ^2.5 as @e[type=minecraft:armor_stand,tag=exp.mech,distance=..2.5,limit=1,sort=nearest] rotated as @s unless predicate expansion:passengers/player_on_stack unless predicate expansion:passengers/ac_on_stack as @p[tag=exp.attempt_mount] run function expansion:vehicles/mech/enter
tag @s remove exp.attempt_mount

# revoke
advancement revoke @s only expansion:utility/mech_rc