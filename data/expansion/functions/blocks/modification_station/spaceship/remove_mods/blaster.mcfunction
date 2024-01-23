item replace block ~ ~ ~ container.9 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s item.tag.ModStorage.blaster
data remove entity @s item.tag.ModStorage.blaster