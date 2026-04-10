# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/scale_branches
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:blocks/planetarium/init_root (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/scale_branches (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/showcase_parent (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players add #temp exp.counter_1 1

# scale up
execute if score #temp exp.bool matches 1 run scoreboard players operation @s exp.distance_mod *= #temp exp.counter_1
execute if score #temp exp.bool matches 1 run scoreboard players operation @s exp.size_mod *= #temp exp.counter_1
# scale down
execute if score #temp exp.bool matches -1 run scoreboard players operation @s exp.distance_mod /= #temp exp.counter_1
execute if score #temp exp.bool matches -1 run scoreboard players operation @s exp.size_mod /= #temp exp.counter_1

scoreboard players operation #temp exp.size = @s exp.size
function expansion:blocks/planetarium/set_size

# count the iterations to scale accordingly
# the moon startes at 2
# earth startes at 1
execute on passengers if entity @s[tag=exp.planetarium_pivot] on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.counter_1