function expansion:mechanics/gravity/remove
attribute @s minecraft:gravity modifier add 284591 -1 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add 284591 500 add_value

execute if entity @s[type=#expansion:attributeless] run data merge entity @s {NoGravity:1b}

scoreboard players operation @s exp.gravity_id = #zero exp.gravity_id
