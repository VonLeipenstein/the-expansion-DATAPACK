function expansion:mechanics/gravity/remove_all

attribute @s minecraft:generic.gravity modifier add 284595 -0.87 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add 284595 10 add_value
tag @s add exp.applied_europa_gravity
tag @s add exp.has_changed_gravity