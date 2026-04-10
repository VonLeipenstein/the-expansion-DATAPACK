# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/rocket/launch
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/rocket/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# prepare the stored rocket target
execute on vehicle run function expansion:projectiles/homing_rocket/target/retrieve

# summon new rocket
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.3 ^1.5 ^3 rotated as @s run function expansion:projectiles/homing_rocket/summon/new_stack
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.3 ^1.5 ^3 rotated as @s run function expansion:projectiles/homing_rocket/summon/new_stack
