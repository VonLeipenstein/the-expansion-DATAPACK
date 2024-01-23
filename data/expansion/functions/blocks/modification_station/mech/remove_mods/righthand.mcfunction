item replace block ~ ~ ~ container.14 with minecraft:jigsaw{gui_item:1b,CustomModelData:124401,display:{Name:'{"text":""}'}}
data modify block ~ ~ ~ Items[{Slot:14b}] set from entity @s ArmorItems[3].tag.ModStorage.righthand
data remove entity @s ArmorItems[3].tag.ModStorage.righthand

function expansion:vehicles/mech/actions/righthand/equip/hand