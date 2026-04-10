# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/printing/check_recipes
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/fabricator/gui/button_push (1 caller) [WARN side/down 2]
# - function expansion:blocks/fabricator/printing/check_remaining (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:blocks/fabricator/recipes

execute if items entity @s container.0 * unless items entity @s container.0 jigsaw[custom_data~{gui_item:1b}] run return run function expansion:blocks/fabricator/printing/prepare_print