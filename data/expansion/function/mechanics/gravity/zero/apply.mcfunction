function expansion:mechanics/gravity/remove_all

attribute @s minecraft:generic.gravity modifier add 284596 -1 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add 284596 500 add_value
tag @s add exp.applied_zero_gravity
tag @s add exp.has_changed_gravity