attribute @s minecraft:gravity modifier remove 284591
attribute @s minecraft:safe_fall_distance modifier remove 284591

execute if entity @s[type=#expansion:attributeless,scores={exp.gravity_id=1..},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}

scoreboard players reset @s exp.gravity_id