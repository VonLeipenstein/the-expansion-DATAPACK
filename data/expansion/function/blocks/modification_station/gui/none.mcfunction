# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/gui/none
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/modification_station/gui/main (1 caller) [OK same-folder]
# - function expansion:blocks/modification_station/place/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.0 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:0, Type:"filler"}
execute unless items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:1, Type:"filler"}
execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"filler"}
execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"modstation_none"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"filler"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"filler"}
execute unless items block ~ ~ ~ container.6 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:6, Type:"filler"}
execute unless items block ~ ~ ~ container.7 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:7, Type:"filler"}
execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"tips/modstation_none"}
execute unless items block ~ ~ ~ container.9 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:9, Type:"filler"}
execute unless items block ~ ~ ~ container.10 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:10, Type:"filler"}
execute unless items block ~ ~ ~ container.11 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:11, Type:"filler"}
execute unless items block ~ ~ ~ container.12 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:12, Type:"filler"}
execute unless items block ~ ~ ~ container.13 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:13, Type:"filler"}
execute unless items block ~ ~ ~ container.14 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:14, Type:"filler"}
execute unless items block ~ ~ ~ container.15 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:15, Type:"filler"}
execute unless items block ~ ~ ~ container.16 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:16, Type:"filler"}
execute unless items block ~ ~ ~ container.17 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:17, Type:"icons/upgrade"}
execute unless items block ~ ~ ~ container.18 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:18, Type:"filler"}
execute unless items block ~ ~ ~ container.19 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:19, Type:"filler"}
execute unless items block ~ ~ ~ container.20 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:20, Type:"filler"}
execute unless items block ~ ~ ~ container.21 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:21, Type:"filler"}
execute unless items block ~ ~ ~ container.22 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:22, Type:"filler"}
execute unless items block ~ ~ ~ container.23 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:23, Type:"filler"}
execute unless items block ~ ~ ~ container.24 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:24, Type:"filler"}
execute unless items block ~ ~ ~ container.25 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:25, Type:"filler"}
execute unless items block ~ ~ ~ container.26 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:26, Type:"icons/remove"}

execute on passengers if entity @s[tag=exp.modstation_display] run data remove entity @s item