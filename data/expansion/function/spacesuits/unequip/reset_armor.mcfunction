# >>> generated function callers >>>
# Callers for expansion:spacesuits/unequip/reset_armor
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/unequip/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Tag worn (valid) armor items to exlude them from the operations
execute if items entity @s armor.head *[minecraft:custom_data~{exp_armor.equipped:1b}] run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:2b}}
execute if items entity @s armor.chest *[minecraft:custom_data~{exp_armor.equipped:1b}] run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:2b}}
execute if items entity @s armor.legs *[minecraft:custom_data~{exp_armor.equipped:1b}] run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:2b}}
execute if items entity @s armor.feet *[minecraft:custom_data~{exp_armor.equipped:1b}] run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:2b}}

# Now that we found the item, copy it to a storage and unequip it
data modify storage expansion:temp equipment set from entity @s Inventory[{components:{"minecraft:custom_data":{exp_armor.equipped:1b}}}]
execute if data storage expansion:temp equipment run function expansion:spacesuits/unequip/restore_item with storage expansion:temp equipment

# restore the other armor items
execute if items entity @s armor.head *[minecraft:custom_data~{exp_armor.equipped:2b}] run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:1b}}
execute if items entity @s armor.chest *[minecraft:custom_data~{exp_armor.equipped:2b}] run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:1b}}
execute if items entity @s armor.legs *[minecraft:custom_data~{exp_armor.equipped:2b}] run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:1b}}
execute if items entity @s armor.feet *[minecraft:custom_data~{exp_armor.equipped:2b}] run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:1b}}

# Re-evaluate the entire armor set scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment