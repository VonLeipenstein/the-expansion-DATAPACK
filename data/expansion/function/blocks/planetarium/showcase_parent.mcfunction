# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/showcase_parent
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/interaction/select_planet (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# select the parent and make it the new root
execute on vehicle on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/set_root

# run down the tree to scale the distance and size of all children accordingly
scoreboard players set #temp exp.bool -1
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/scale_branches
scoreboard players reset #temp exp.bool

# remove root status from self
function expansion:blocks/planetarium/reset