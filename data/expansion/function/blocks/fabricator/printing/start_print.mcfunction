# >>> generated function callers >>>
# Callers for expansion:blocks/fabricator/printing/start_print
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/fabricator/printing/prepare_print (1 caller) [OK same-folder]
# <<< generated function callers <<<

# remove one count from all the 9 crafting slots
function expansion:utilities/barrel/remove_crafting_items

# set the print time, this is synchronised with the animation time
scoreboard players set @s exp.timer_1 50

# start the animation
execute on passengers if entity @s[tag=aj.fabricator.root] run function animated_java:fabricator/animations/printer.print/play

# display the item
execute on passengers if entity @s[tag=exp.fabricator_display] run function expansion:blocks/fabricator/add_display