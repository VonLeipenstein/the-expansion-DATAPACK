# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/button_push
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/assembler/crafting (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:utilities/sounds/button
execute if items block ~ ~ ~ container.16 * run return fail

function expansion:blocks/assembler/recipes
execute if items entity @s contents * run function expansion:blocks/assembler/prepare_assembly

