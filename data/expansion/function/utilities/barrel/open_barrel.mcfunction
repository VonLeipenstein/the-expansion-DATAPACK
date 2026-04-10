# >>> generated function callers >>>
# Callers for expansion:utilities/barrel/open_barrel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:utilities/barrel/toggle_open (1 caller) [OK same-folder]
# <<< generated function callers <<<

stopsound @p block block.barrel.open
tag @s add exp.barrel_open
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{gui_item:1b,gui_button:0b}}}]