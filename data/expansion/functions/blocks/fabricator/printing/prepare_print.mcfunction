# check if the item already in the output slot is the same as the item about to be printed
data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:15b}]
data modify entity @s ArmorItems[1].Count set value 1
execute store success score @s exp.bool run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0]
tag @s remove exp.print_ready

# allow printing when there is no item or the same item in the output slot
# if there is a matching item in the output slot
execute unless score @s exp.bool matches 1 if data block ~ ~ ~ Items[{Slot:15b}] run tag @s add exp.print_ready
# if there is no item in the output slot
execute unless score @s exp.bool matches 0 unless data block ~ ~ ~ Items[{Slot:15b}] run tag @s add exp.print_ready

# prevent printing when the output slot is full
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:jigsaw",Count:64b}]} run tag @s remove exp.print_ready
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:carrot_on_a_stick",Count:1b}]} run tag @s remove exp.print_ready

# start the print if conditions are met
execute if entity @s[tag=exp.print_ready] run function expansion:blocks/fabricator/printing/start_print

# Display the red flash animation when the print is invalid
execute unless entity @s[tag=exp.print_ready] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{gui_item:1b}}]} run scoreboard players set @s exp.cooldown 20

# remove the testing item
item replace entity @s armor.legs with air