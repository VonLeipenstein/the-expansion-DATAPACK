# remove one count from all the 9 crafting slots or remove the item entirely if it only had 1 count left
function expansion:utilities/barrel_utility/remove_crafting_items

# set the print time, this is synchronised with the animation time
scoreboard players set @s exp.timer_1 50

# start the animation
execute on passengers if entity @s[tag=aj.fabricator.root] at @s run function animated_java:fabricator/animations/printer.print/play