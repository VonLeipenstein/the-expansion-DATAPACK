execute unless score @s exp.timer_1 matches 2.. unless block ~ ~ ~ barrel{Items:[{Slot:14b,id:"minecraft:jigsaw",components:{"minecraft:custom_data":{gui_button:1b,gui_item:1b}}}]} run function expansion:blocks/assembler/button_push

execute as @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] unless items block ~ ~ ~ container.16 * unless score @s exp.timer_1 matches 1.. unless data entity @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] item{id:"minecraft:jigsaw"} run loot replace entity @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] container.0 loot expansion:items/gui/filler

function expansion:blocks/assembler/gui