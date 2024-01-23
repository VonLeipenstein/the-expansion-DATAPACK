item replace block ~ ~ ~ container.9 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:9b}] set from entity @s ArmorItems[3].tag.ModStorage.lefthand
data remove entity @s ArmorItems[3].tag.ModStorage.lefthand

function expansion:vehicles/mech/actions/lefthand/equip/hand