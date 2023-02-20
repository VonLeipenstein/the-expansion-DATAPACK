execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b}]} run item replace block ~ ~ ~ container.0 with minecraft:jigsaw{air_button:1b,CustomModelData:124421,display:{Name:'{"text":"Display Air","italic": false,"color": "white"}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} if score @s exp.bool matches 0 run item replace block ~ ~ ~ container.1 with minecraft:jigsaw{oxygenator_button:1b,CustomModelData:124422,display:{Name:'{"text":"Pressurize Room","italic": false,"color": "green"}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:1b}]} if score @s exp.bool matches 1 run item replace block ~ ~ ~ container.1 with minecraft:jigsaw{oxygenator_button:1b,CustomModelData:124422,display:{Name:'{"text":"De-Pressurize Room","italic": false,"color": "red"}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:2b}]} run item replace block ~ ~ ~ container.2 with minecraft:jigsaw{sphere_button:1b,CustomModelData:124423,display:{Name:'{"text":"Display 20-Radius Sphere","italic": false,"color": "white"}'},gui_item:1b}

execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:3b}]} run item replace block ~ ~ ~ container.3 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:4b}]} run item replace block ~ ~ ~ container.4 with minecraft:jigsaw{CustomModelData:124420,display:{Name:'{"text":""}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:5b}]} run item replace block ~ ~ ~ container.5 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}

#execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"text":""}'},gui_item:1b}
execute unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with minecraft:jigsaw{CustomModelData:124401,display:{Name:'{"translate":"exp_blocks_guitip_info","color":"white","italic": false}',Lore:['{"translate":"exp_blocks_oxygenator_guitip1","color":"white","italic":false}','{"translate":"exp_blocks_oxygenator_guitip2","color":"white","italic":false}','{"translate":"exp_blocks_oxygenator_guitip3","color":"white","italic":false}','{"translate":"exp_blocks_oxygenator_guitip4","color":"white","italic":false}','{"translate":"exp_blocks_oxygenator_guitip5","color":"white","italic":false}']},gui_item:1b}


