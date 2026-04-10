# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/spin/displays
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/spin/pivots (1 caller) [OK same-folder]
# <<< generated function callers <<<

# change the location of all the displays if this is the enabled branch
execute if score #enable_branch exp.bool matches 1 run function expansion:blocks/planetarium/spin/enabled_branch

# move all the nodes from disabled branches to the center
execute unless score #enable_branch exp.bool matches 1 run function expansion:blocks/planetarium/disabled_branch

# continue down the tree
execute on passengers if entity @s[tag=exp.planetarium_pivot] at @s run function expansion:blocks/planetarium/spin/pivots