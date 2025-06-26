# remove one count from all the 9 crafting slots
function expansion:utilities/barrel/remove_crafting_items

# set the print time, this is synchronised with the animation time
scoreboard players set @s exp.timer_1 50

# start the animation
execute on passengers if entity @s[tag=aj.fabricator.root] run function animated_java:fabricator/animations/printer.print/play

# display the item
execute on passengers if entity @s[tag=exp.fabricator_display] run function expansion:blocks/fabricator/add_display