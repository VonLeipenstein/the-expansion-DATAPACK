execute unless items block ~ ~ ~ container.0 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:0, Type:"icons/tree"}
execute unless items block ~ ~ ~ container.1 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:1, Type:"terraformer"}

execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b,greenlight:1b}] if score @s exp.bool matches 1 run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"icons/green"}
execute unless items block ~ ~ ~ container.2 *[custom_data~{gui_item:1b,redlight:1b}] if score @s exp.bool matches 0 run function expansion:utilities/barrel/gui/fill_slot {Slot:2, Type:"icons/red"}

execute unless items block ~ ~ ~ container.3 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:3, Type:"icons/cube"}
execute unless items block ~ ~ ~ container.4 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:4, Type:"filler"}

execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b,greenlight:1b}] if score @s exp.counter_1 matches 1 run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"icons/green"}
execute unless items block ~ ~ ~ container.5 *[custom_data~{gui_item:1b,redlight:1b}] if score @s exp.counter_1 matches 0 run function expansion:utilities/barrel/gui/fill_slot {Slot:5, Type:"icons/red"}

execute unless items block ~ ~ ~ container.6 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:6, Type:"icons/particle"}
execute unless items block ~ ~ ~ container.7 *[custom_data~{gui_item:1b}] run function expansion:utilities/barrel/gui/fill_slot {Slot:7, Type:"filler"}

execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b,greenlight:1b}] if score @s exp.counter_2 matches 1 run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"icons/green"}
execute unless items block ~ ~ ~ container.8 *[custom_data~{gui_item:1b,redlight:1b}] if score @s exp.counter_2 matches 0 run function expansion:utilities/barrel/gui/fill_slot {Slot:8, Type:"icons/red"}
