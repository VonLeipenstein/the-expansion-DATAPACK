item replace block ~ ~ ~ container.18 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:18b}] set from entity @s item.tag.ModStorage.speed
data remove entity @s item.tag.ModStorage.speed