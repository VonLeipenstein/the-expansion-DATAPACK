# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/set_root
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 2/3 honored
# Sources:
# - function expansion:blocks/planetarium/init_root (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/prepare/pivots (1 caller) [WARN side/down 1]
# - function expansion:blocks/planetarium/showcase_parent (1 caller) [OK same-folder]
# <<< generated function callers <<<

# make this pivot the new root
tag @s add exp.planetarium_root

# update the corresponding display
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/set_root_display
