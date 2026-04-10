# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/recipes
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/assembler/button_push (1 caller) [OK same-folder]
# <<< generated function callers <<<

# buggy
execute if function expansion:utilities/recipe_predicates/buggy run return run function expansion:vehicles/buggy/craft
# spaceship
execute if function expansion:utilities/recipe_predicates/spaceship run return run function expansion:blocks/assembler/craft_spaceship
# railgun
execute if function expansion:utilities/recipe_predicates/railgun run return run loot replace entity @s container.0 loot expansion:weapons/railgun
# cryoblaster
execute if function expansion:utilities/recipe_predicates/cryoblaster run return run loot replace entity @s container.0 loot expansion:tools/cryoblaster
# pet drone
execute if function expansion:utilities/recipe_predicates/pet_drone run return run loot replace entity @s container.0 loot expansion:tools/pet_drone