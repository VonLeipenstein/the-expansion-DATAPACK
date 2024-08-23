execute if predicate expansion:utility/sneak if entity @s[x_rotation=-90..-30] unless entity @s[tag=exp.gravity_ascending] run function expansion:mechanics/gravity/zero/ascend
execute if predicate expansion:utility/sneak if entity @s[x_rotation=30..90] unless entity @s[tag=exp.gravity_descending] run function expansion:mechanics/gravity/zero/descend

execute if score @s exp.jump matches 1.. run function expansion:mechanics/gravity/zero/ascend

execute if predicate expansion:utility/sneak if entity @s[x_rotation=-30..30] unless entity @s[tag=!exp.gravity_descending,tag=!exp.gravity_ascending] run function expansion:mechanics/gravity/zero/float