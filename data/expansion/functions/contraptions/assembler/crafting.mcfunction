execute unless score @s exp.timer_1 matches 2.. unless block ~ ~ ~ barrel{Items:[{Slot:14b,id:"minecraft:jigsaw",tag:{assembler_button:1b,gui_item:1b}}]} run function expansion:contraptions/assembler/button_push

execute as @e[type=minecraft:item_display,tag=exp.assembler_product,limit=1,sort=nearest] run function expansion:contraptions/assembler/display_item

function expansion:contraptions/assembler/gui