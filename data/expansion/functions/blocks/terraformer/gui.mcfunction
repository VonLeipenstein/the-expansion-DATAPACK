execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} run item replace block ~ ~ ~ container.0 with minecraft:jigsaw{CustomModelData:124413,tree_button:1b,display:{Name:'{"text":"Terraform Land","color":"white","italic": false}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with minecraft:jigsaw{CustomModelData:124411,display:{Name:'{"text":""}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} if score @s exp.bool matches 1 run item replace block ~ ~ ~ container.2 with minecraft:jigsaw{CustomModelData:124416,toggle_indicator:1b,display:{Name:'{"text":"Enabled","color":"green"}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} if score @s exp.bool matches 0 run item replace block ~ ~ ~ container.2 with minecraft:jigsaw{CustomModelData:124415,toggle_indicator:1b,display:{Name:'{"text":"Disabled","color":"red"}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} run item replace block ~ ~ ~ container.3 with minecraft:jigsaw{CustomModelData:124412,cube_button:1b,display:{Name:'{"text":"Cube Mode","color":"white","italic": false}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} run item replace block ~ ~ ~ container.4 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if score @s exp.counter_1 matches 1 run item replace block ~ ~ ~ container.5 with minecraft:jigsaw{CustomModelData:124416,toggle_indicator:1b,display:{Name:'{"text":"Enabled","color":"green"}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} if score @s exp.counter_1 matches 0 run item replace block ~ ~ ~ container.5 with minecraft:jigsaw{CustomModelData:124415,toggle_indicator:1b,display:{Name:'{"text":"Disabled","color":"red"}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with minecraft:jigsaw{CustomModelData:124414,particle_button:1b,display:{Name:'{"text":"Particles","color":"white","italic": false}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if score @s exp.counter_2 matches 1 run item replace block ~ ~ ~ container.8 with minecraft:jigsaw{CustomModelData:124416,toggle_indicator:1b,display:{Name:'{"text":"Enabled","color":"green"}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} if score @s exp.counter_2 matches 0 run item replace block ~ ~ ~ container.8 with minecraft:jigsaw{CustomModelData:124415,toggle_indicator:1b,display:{Name:'{"text":"Disabled","color":"red"}'},gui_item:1b}
