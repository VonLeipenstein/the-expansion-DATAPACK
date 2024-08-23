tag @s add exp.gravity_descending
tag @s remove exp.gravity_ascending

function expansion:mechanics/gravity/zero/remove_movement_modifier
attribute @s minecraft:generic.gravity modifier add 28458 0.1 add_multiplied_base