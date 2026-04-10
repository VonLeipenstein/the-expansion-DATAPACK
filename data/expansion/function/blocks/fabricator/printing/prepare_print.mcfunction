# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/printing/prepare_print
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/check_recipes (1 caller) [OK same-folder]
# <<< generated function callers <<<

# start the print if conditions are met
execute if function expansion:blocks/fabricator/printing/valid_output run return run function expansion:blocks/fabricator/printing/start_print

# Display the red flash animation when the print is invalid
execute if items block ~ ~ ~ container.26 *[custom_data~{gui_item:1b}] run scoreboard players set @s exp.cooldown 20

item replace entity @s container.0 with air