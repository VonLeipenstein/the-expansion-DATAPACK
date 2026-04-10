# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/init_root
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/interaction/select_planet (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# run through all other pivots up the tree and remove their root status
scoreboard players set #temp exp.counter_1 -1
execute on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/steal_to_root

# run down the tree to scale the distance and size of all children accordingly
# 1 for upscaling, -1 for downscaling
scoreboard players set #temp exp.bool 1
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.bool

# make this the new root
function expansion:blocks/planetarium/set_root