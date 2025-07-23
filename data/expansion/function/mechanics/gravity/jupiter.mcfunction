function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 1.4 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 0.7 add_multiplied_base
attribute @s minecraft:fall_damage_multiplier modifier add 284591 1.4 add_multiplied_base

scoreboard players operation @s exp.gravity_id = #jupiter exp.gravity_id