# >>> generated function callers >>>
# Callers for expansion:blocks/lacrymae_extractor/gui
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/lacrymae_extractor/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.0 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:0, Type:"extractor"}
execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"tips/extractor"}
execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"filler"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"filler"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"filler"}
execute unless items block ~ ~ ~ container.7 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:7, Type:"filler"}

# merge the displayed block with the item in slot 1
execute if items block ~ ~ ~ container.1 #expansion:extractable on passengers if entity @s[tag=exp.extractor_display] unless items entity @s contents * run item replace entity @s contents from block ~ ~ ~ container.1
execute on passengers if entity @s[tag=exp.extractor_display] if items entity @s contents * unless items block ~ ~ ~ container.1 #expansion:extractable run item replace entity @s contents with air