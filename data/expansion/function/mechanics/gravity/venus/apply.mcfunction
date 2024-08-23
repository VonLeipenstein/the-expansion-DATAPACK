function expansion:mechanics/gravity/remove_all

attribute @s minecraft:generic.gravity modifier add 284593 -0.09 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add 284593 10 add_value
tag @s add exp.applied_venus_gravity
tag @s add exp.has_changed_gravity