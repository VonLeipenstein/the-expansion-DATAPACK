# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/shoot/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/shoot/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# get players pitch
execute store result score #temp exp.pitch on vehicle on passengers if entity @s[tag=exp.mech_seat] on passengers run data get entity @s Rotation[1] 1000

# left
execute if entity @s[tag=exp.left_arm_control,tag=exp.shoot_right] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.2 ^.4 ^3.5 rotated as @s rotated ~2 ~ summon item_display run function expansion:projectiles/autocannon_bullet/cast
execute if entity @s[tag=exp.left_arm_control,tag=exp.shoot_left] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.55 ^.5 ^3.5 rotated as @s rotated ~2 ~ summon item_display run function expansion:projectiles/autocannon_bullet/cast

# right, not symmetric for some reason
execute if entity @s[tag=exp.right_arm_control,tag=exp.shoot_left] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.0 ^.4 ^3.5 rotated as @s rotated ~-2 ~ summon item_display run function expansion:projectiles/autocannon_bullet/cast
execute if entity @s[tag=exp.right_arm_control,tag=exp.shoot_right] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.35 ^.5 ^3.5 rotated as @s rotated ~-2 ~ summon item_display run function expansion:projectiles/autocannon_bullet/cast

# remove tags
tag @s remove exp.shoot
tag @s remove exp.shoot_left
tag @s remove exp.shoot_right
