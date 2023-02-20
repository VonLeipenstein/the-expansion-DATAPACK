function expansion:contraptions/assembler/recipes
execute if data entity @s ArmorItems[0].id run function expansion:contraptions/assembler/prepare_assembly
execute if entity @s[tag=exp.barrel_open] run playsound expansion:gui.button_click block @p
