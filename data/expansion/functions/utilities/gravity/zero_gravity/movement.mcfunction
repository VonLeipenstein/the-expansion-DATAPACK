execute unless score @s[predicate=expansion:utility/sneak] exp.sneak_delay matches 1.. run scoreboard players set @s exp.sneak_delay 4
# run movement functions when shifting/double shifting
tag @s[predicate=expansion:utility/sneak,scores={exp.sneak_delay=..3},x_rotation=-90..-0.1] add exp.rising
tag @s[predicate=expansion:utility/sneak,scores={exp.sneak_delay=..3},x_rotation=0..90] add exp.falling
# remove exp.delay exp.value
scoreboard players remove @s[predicate=!expansion:utility/sneak,scores={exp.sneak_delay=1..}] exp.sneak_delay 1

execute if entity @s[scores={exp.sneak_delay=4},x_rotation=-90..-0.1] run function expansion:utilities/gravity/zero_gravity/ascend
execute if entity @s[scores={exp.sneak_delay=4},x_rotation=0..90] run function expansion:utilities/gravity/zero_gravity/descend