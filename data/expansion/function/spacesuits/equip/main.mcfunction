# >>> generated function callers >>>
# Callers for expansion:spacesuits/equip/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if items entity @s armor.head *[minecraft:custom_data~{exp_armor.equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/head
execute if items entity @s armor.chest *[minecraft:custom_data~{exp_armor.equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{exp_armor.equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{exp_armor.equipped:0b}] unless data storage expansion:temp equipment run function expansion:spacesuits/equip/feet

# add all the parameters of the exp_armor.equipped piece to the players scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment