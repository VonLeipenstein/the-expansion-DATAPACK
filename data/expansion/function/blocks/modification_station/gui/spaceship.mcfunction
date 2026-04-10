# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/gui/spaceship
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/gui/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:1, Type:"filler"}
execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"filler"}
execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"modstation_ship"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"filler"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b,visible:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"filler_visible"}
#execute if items block ~ ~ ~ container.5 jigsaw[minecraft:custom_data~{gui_item:1b}] run item replace block ~ ~ ~ container.5 with air
execute unless items block ~ ~ ~ container.6 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:6, Type:"filler"}
execute unless items block ~ ~ ~ container.7 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:7, Type:"filler"}
execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b,spaceship_tip:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"tips/modstation_ship"}
execute if items block ~ ~ ~ container.9 jigsaw[minecraft:custom_data~{gui_item:1b}] run item replace block ~ ~ ~ container.9 with air
execute unless items block ~ ~ ~ container.10 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:10, Type:"filler"}
execute unless items block ~ ~ ~ container.11 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:11, Type:"filler"}
execute unless items block ~ ~ ~ container.12 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:12, Type:"filler"}
execute unless items block ~ ~ ~ container.13 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:13, Type:"filler"}
execute unless items block ~ ~ ~ container.14 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:14, Type:"filler"}
execute unless items block ~ ~ ~ container.15 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:15, Type:"filler"}
execute unless items block ~ ~ ~ container.16 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:16, Type:"filler"}
execute unless items block ~ ~ ~ container.17 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:17, Type:"icons/upgrade"}
execute if items block ~ ~ ~ container.18 jigsaw[minecraft:custom_data~{gui_item:1b}] run item replace block ~ ~ ~ container.18 with air
execute unless items block ~ ~ ~ container.19 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:19, Type:"filler"}
execute unless items block ~ ~ ~ container.20 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:20, Type:"filler"}
execute unless items block ~ ~ ~ container.21 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:21, Type:"filler"}
execute unless items block ~ ~ ~ container.22 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:22, Type:"filler"}
execute unless items block ~ ~ ~ container.23 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:23, Type:"filler"}
execute unless items block ~ ~ ~ container.24 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:24, Type:"filler"}
execute unless items block ~ ~ ~ container.25 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:25, Type:"filler"}
execute unless items block ~ ~ ~ container.26 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:26, Type:"icons/remove"}

# display the selected vehicle
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin on passengers if entity @s[tag=exp.spaceship_display] run data modify storage expansion:temp display_item set from entity @s item
execute on passengers if entity @s[tag=exp.modstation_display] run data modify entity @s item set from storage expansion:temp display_item
execute on passengers if entity @s[tag=exp.modstation_display] run data merge entity @s {transformation:{translation:[0.0,0.3,0.0]}}
data remove storage expansion:temp display_item