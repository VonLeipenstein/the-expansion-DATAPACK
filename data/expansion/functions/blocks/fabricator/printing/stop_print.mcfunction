# if there is already an item(the same item as checked previously) then increment its count.
execute store result score @s exp.hold_count run data get entity @s ArmorItems[0].tag.crafting_count

data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:15b}]
data modify entity @s ArmorItems[1].Count set value 1

execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]


execute if data block ~ ~ ~ Items[{Slot:15b}] unless score @s exp.bool matches 1 run function expansion:blocks/fabricator/printing/increment_count

# if there is no item, simply put put the feet armor item in there
execute unless data block ~ ~ ~ Items[{Slot:15b}] run function expansion:blocks/fabricator/printing/insert_item

# display the crafted item if the printer is done printing the whole batch. coas need a different display from jigsaws to make it look good.
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick"}]} run item replace entity @e[type=armor_stand,tag=exp.head_item,limit=1,sort=nearest] weapon.offhand from entity @s armor.feet
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:jigsaw"}]} run item replace entity @e[type=armor_stand,tag=exp.hand_item,limit=1,sort=nearest] armor.head from entity @s armor.feet

# remove the feet item which was holding the item until the print was complete
item replace entity @s armor.feet with air
# remove the testing item
item replace entity @s armor.legs with air

# stop the animation
function expansion:blocks/fabricator/animation/animation_stop

# run the print again if there are still items inside the printer
execute if data block ~ ~ ~ Items[{Slot:2b}] run function expansion:blocks/fabricator/gui/button_push

