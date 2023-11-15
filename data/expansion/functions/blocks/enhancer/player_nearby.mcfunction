execute unless block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:jigsaw",tag:{enhancer_button:1b,gui_item:1b}}]} run function expansion:blocks/enhancer/button_push

execute if data block ~ ~ ~ Items[{Slot:5b,tag:{space_equipment:1b}}] as @e[type=minecraft:armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest] unless data entity @s ArmorItems[3].id run item replace entity @s armor.head from block ~ ~ ~ container.5
execute unless data block ~ ~ ~ Items[{Slot:5b,tag:{space_equipment:1b}}] as @e[type=minecraft:armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest] if data entity @s ArmorItems[3].id run item replace entity @s armor.head with air

execute as @e[type=minecraft:armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~2 ~

function expansion:blocks/enhancer/gui