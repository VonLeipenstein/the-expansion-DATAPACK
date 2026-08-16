# >>> generated function callers >>>
# Callers for expansion:blocks/infuser/gui
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/infuser/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if entity @s[tag=exp.smelting] unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/infuser_animated
execute if entity @s[tag=!exp.smelting] unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/infuser

execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"filler"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"filler"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"filler"}
execute unless items block ~ ~ ~ container.6 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:6, Type:"filler"}
execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"filler"}
