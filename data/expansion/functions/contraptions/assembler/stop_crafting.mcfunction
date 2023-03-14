function expansion:contraptions/assembler/animation/animation_stop

item replace block ~ ~ ~ container.16 from entity @s armor.feet
item replace entity @s armor.feet with air

#item replace entity 
#data merge entity @e[type=minecraft:item_display,tag=exp.assembler_display,limit=1,sort=nearest] {item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:124402,display:{Name:'{"text":""}'}}}}
function expansion:contraptions/assembler/display_item