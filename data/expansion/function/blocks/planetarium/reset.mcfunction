# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/reset
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/showcase_parent (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/steal_to_root (1 caller) [OK same-folder]
# <<< generated function callers <<<

# remove the tag
tag @s remove exp.planetarium_root

# restore the transform values of the displays belonging to this pivot
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/remove_root_display