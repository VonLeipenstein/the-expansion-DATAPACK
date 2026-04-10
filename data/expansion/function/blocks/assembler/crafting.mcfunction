# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/crafting
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/assembler/interaction (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless score @s exp.timer_1 matches 2.. unless items block ~ ~ ~ container.14 jigsaw[custom_data~{gui_button:1b}] run function expansion:blocks/assembler/button_push

execute unless items block ~ ~ ~ container.16 * unless score @s exp.timer_1 matches 1.. run function expansion:blocks/assembler/remove_display

function expansion:blocks/assembler/gui