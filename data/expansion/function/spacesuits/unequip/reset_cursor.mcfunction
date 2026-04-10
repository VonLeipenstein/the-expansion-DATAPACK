# >>> generated function callers >>>
# Callers for expansion:spacesuits/unequip/reset_cursor
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/unequip/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

item modify entity @s player.cursor {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}

# Re-evaluate the entire armor set scores
function expansion:spacesuits/get_armor_modules/main

# remove storage entries
data remove storage expansion:temp equipment