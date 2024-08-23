# Synchronises the rotation of the armor stand with the target portals rotation.
data modify entity @s Rotation[0] set from storage expansion:portal portal_out[0].facing

# Stores the dimensions of the home portal and the target portal in scoreboards.
#execute store result score @s exp.dim_test run data get entity @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] ArmorItems[3].components.minecraft:custom_data.portal_array[0].dim
execute store result score @s exp.dim_test run data get storage expansion:portal portal_out[0].dim

# Remove the teleport tag within a few ticks
schedule function expansion:blocks/portal/teleport/schedule_tp_tag 1t

# Run different teleport functions depending on the home and target dimensions. This is necessary because the target coordinates need to be scaled according to the target dimension scale.
# There is probably a better way to do this(like immediately taking the dimension scale into account when making the portal array but I'm really too tired to improve a single tick function)
execute if score @s[tag=!exp.teleported,predicate=expansion:dimension/scale_1] exp.dim_test matches 0..6 run function expansion:blocks/portal/teleport/tp_scale_1
execute if score @s[tag=!exp.teleported,predicate=expansion:dimension/scale_10] exp.dim_test matches 7..8 run function expansion:blocks/portal/teleport/tp_scale_10
execute if score @s[tag=!exp.teleported,predicate=expansion:dimension/scale_1] exp.dim_test matches 0..6 run function expansion:blocks/portal/teleport/tp_scale_10_to_1
execute if score @s[tag=!exp.teleported,predicate=expansion:dimension/scale_10] exp.dim_test matches 7..8 run function expansion:blocks/portal/teleport/tp_scale_1_to_10

# add tag
tag @s add exp.teleported