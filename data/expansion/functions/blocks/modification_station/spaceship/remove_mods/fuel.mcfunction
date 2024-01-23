item replace block ~ ~ ~ container.0 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:0b}] set from entity @s item.tag.ModStorage.fuel
data remove entity @s item.tag.ModStorage.fuel