# >>> generated function callers >>>
# Callers for expansion:spacesuits/equip/feet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/equip/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:1b}}

tag @s add exp.armor.feet

data modify storage expansion:temp equipment set from entity @s equipment.feet