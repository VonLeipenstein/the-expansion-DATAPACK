function expansion:mechanics/gravity/remove_all

attribute @s minecraft:generic.gravity modifier add 284592 -0.62 add_multiplied_base
attribute @s minecraft:generic.safe_fall_distance modifier add 284592 10 add_value
tag @s add exp.applied_mars_gravity
tag @s add exp.has_changed_gravity