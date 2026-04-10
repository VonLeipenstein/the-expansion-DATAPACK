# >>> generated function callers >>>
# Callers for expansion:mobs/mech/behavior/switch_weapons/get_random_loadout
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:mobs/mech/bots/switching (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# lefthand random
execute store result score #temp exp.math run random value 1..3
execute if score #temp exp.math matches 1 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if score #temp exp.math matches 2 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if score #temp exp.math matches 3 on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/rocket/equip

# righthand random
execute store result score #temp exp.math run random value 1..3
execute if score #temp exp.math matches 1 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if score #temp exp.math matches 2 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if score #temp exp.math matches 3 on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/rocket/equip