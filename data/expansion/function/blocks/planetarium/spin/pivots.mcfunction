# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/spin/pivots
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/main (1 caller) [OK above +1]
# - function expansion:blocks/planetarium/spin/displays (1 caller) [OK same-folder]
# <<< generated function callers <<<

# enable this branch if this pivot is set for display
execute unless score #enable_branch exp.bool matches 1 if entity @s[tag=exp.planetarium_root] run scoreboard players set #enable_branch exp.bool 1

# spin the current pivot
execute if score #enable_branch exp.bool matches 1 at @s run function expansion:blocks/planetarium/spin/pivot_transform

# continue down the tree
execute rotated as @s on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/spin/displays

# disable the branch upon returning at this node
execute if score #enable_branch exp.bool matches 1 if entity @s[tag=exp.planetarium_root] run scoreboard players reset #enable_branch exp.bool