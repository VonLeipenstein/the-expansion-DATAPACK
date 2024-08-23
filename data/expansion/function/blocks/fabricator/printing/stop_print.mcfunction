# if there is already an item(the same item as checked previously) then increment its count.
execute store result score @s exp.hold_count run data get entity @s ArmorItems[0].components.minecraft:custom_data.crafting_count

data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:15b}]
data modify entity @s ArmorItems[1].count set value 1

execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]

execute if items block ~ ~ ~ container.15 * unless score @s exp.bool matches 1 run function expansion:blocks/fabricator/printing/increment_count

# if there is no item, simply put put the feet armor item in there
execute unless items block ~ ~ ~ container.15 * run function expansion:blocks/fabricator/printing/insert_item

# remove the feet item which was holding the item until the print was complete
item replace entity @s armor.feet with air
# remove the testing item
item replace entity @s armor.legs with air

# reset the loader
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,components:{"minecraft:custom_data":{gui_item:1b}}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].components.minecraft:custom_model_data set value 124470

# check if there are any items left in the printer
function expansion:blocks/fabricator/printing/check_remaining

# run the print again if there are still items inside the printer
execute if score @s exp.value matches 1 run function expansion:blocks/fabricator/printing/check_recipes

