item replace block ~ ~ ~ container.5 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:5b}] set from entity @s item.tag.ModStorage.skin
data remove entity @s item.tag.ModStorage.skin

# update the cmd of the spaceship
data modify entity @s item.tag.CustomModelData set value 1012003