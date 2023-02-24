execute if entity @s[tag=exp.has_ship_selected] unless block ~ ~ ~ barrel{Items:[{Slot:16b,id:"minecraft:jigsaw",tag:{modstation_button:1b,gui_item:1b}}]} run function expansion:blocks/modification_station/gui/button_push

execute unless entity @s[tag=exp.has_ship_selected] if entity @e[type=armor_stand,tag=exp.spaceship,distance=..50,limit=1,sort=nearest] run function expansion:blocks/modification_station/select_ship

execute if block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b}}]} run data modify entity @e[type=item_display,tag=exp.modstation_display,limit=1,sort=nearest] item.tag.CustomModelData set from block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{spaceship_skin:1b}}]} run data modify entity @e[type=item_display,tag=exp.modstation_display,limit=1,sort=nearest] item.tag.CustomModelData set from entity @e[type=item_display,predicate=expansion:nbt_checks/root_vehicle/spaceship_mod_ship,limit=1,sort=nearest] item.tag.CustomModelData

function expansion:blocks/modification_station/gui/gui