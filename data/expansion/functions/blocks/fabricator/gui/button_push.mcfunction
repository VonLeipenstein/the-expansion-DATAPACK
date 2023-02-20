function expansion:blocks/fabricator/recipes
execute if data entity @s ArmorItems[0].id run function expansion:blocks/fabricator/printing/prepare_print
execute if entity @s[tag=exp.barrel_open] run playsound expansion:gui.button_click block @p