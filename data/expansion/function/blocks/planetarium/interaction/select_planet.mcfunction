# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/interaction/select_planet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/interaction/click (1 caller) [OK same-folder]
# <<< generated function callers <<<

# select the corresponding pivot and make it the root
execute on vehicle on passengers if entity @s[type=snowball] on origin unless entity @s[tag=exp.planetarium_root] run return run function expansion:blocks/planetarium/init_root

# remove the root from the pivot it it was already the root and pass it to the parent node
execute on vehicle on passengers if entity @s[type=snowball] on origin if entity @s[tag=exp.planetarium_root,tag=!exp.true_pivot] run function expansion:blocks/planetarium/showcase_parent
