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