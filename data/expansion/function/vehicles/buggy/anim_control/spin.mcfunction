# >>> generated function callers >>>
# Callers for expansion:vehicles/buggy/anim_control/spin
# Total callers: 0
# None found
# <<< generated function callers <<<

# Initialize
data modify storage expansion:rotation in.rotation set value [0f,0f,0f]
data modify storage expansion:rotation transformation_old set from entity @s transformation
data modify storage expansion:rotation transformation_new set from entity @s transformation


# negate the translation
data modify storage expansion:rotation transformation_inverse set from entity @s transformation
execute store result storage expansion:rotation transformation_inverse.translation[0] float -1 run data get storage expansion:rotation transformation_old.translation[0]
execute store result storage expansion:rotation transformation_inverse.translation[1] float -1 run data get storage expansion:rotation transformation_old.translation[1]
execute store result storage expansion:rotation transformation_inverse.translation[2] float -1 run data get storage expansion:rotation transformation_old.translation[2]


# calculate
scoreboard players add @s exp.roll 10
execute if score @s exp.roll matches 180 run scoreboard players set @s exp.roll -180

execute store result storage expansion:rotation in.rotation[2] float 1 run scoreboard players get @s exp.roll
function tu:eul2quat with storage expansion:rotation in


data modify storage expansion:rotation transformation_new.first_translation set from storage expansion:rotation transformation_old.translation

data modify storage expansion:rotation transformation_new.left_rotation set from storage tu:io out

data modify storage expansion:rotation transformation_new.translation set from storage expansion:rotation transformation_inverse.translation


# Calculate transformation
function tu:transform with storage expansion:rotation transformation_new

data modify storage expansion:rotation transformation_new set from storage tu:io out




#data modify storage expansion:rotation merge.quat1 set from storage expansion:rotation transformation_old.left_rotation
#data modify storage expansion:rotation merge.quat2 set from storage expansion:rotation transformation_new.left_rotation
#function tu:quatmult with storage expansion:rotation merge
#data modify storage expansion:rotation transformation_new.left_rotation set from storage tu:io out

# merge transformation with entity
data modify entity @s transformation set from storage expansion:rotation transformation_new