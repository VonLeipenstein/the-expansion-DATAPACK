# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/mech/apply_mods/apply_upgrade
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/apply (1 caller) [OK above +2]
# <<< generated function callers <<<

# merge the mod array with the mech
data modify entity @s data.ModStorage merge from storage expansion:temp ModStorage

# set tags and stuff
execute if data storage expansion:temp ModStorage.lefthand.components."minecraft:custom_data".sword on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if data storage expansion:temp ModStorage.lefthand.components."minecraft:custom_data".blaster on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if data storage expansion:temp ModStorage.lefthand.components."minecraft:custom_data".rocket on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/rocket/equip
execute if data storage expansion:temp ModStorage.lefthand.components."minecraft:custom_data".drill on passengers if entity @s[tag=exp.left_arm_control] run function expansion:vehicles/mech/actions/drill/equip

execute if data storage expansion:temp ModStorage.righthand.components."minecraft:custom_data".sword on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/swing/equip
execute if data storage expansion:temp ModStorage.righthand.components."minecraft:custom_data".blaster on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/shoot/equip
execute if data storage expansion:temp ModStorage.righthand.components."minecraft:custom_data".rocket on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/rocket/equip
execute if data storage expansion:temp ModStorage.righthand.components."minecraft:custom_data".drill on passengers if entity @s[tag=exp.right_arm_control] run function expansion:vehicles/mech/actions/drill/equip
# remove tag
tag @s remove exp.being_modified