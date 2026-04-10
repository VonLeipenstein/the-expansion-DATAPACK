# >>> generated function callers >>>
# Callers for expansion:spacesuits/equip/check_tags
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if items entity @s armor.* *[minecraft:custom_data~{exp_armor.equipped:0b}] run return 1

execute unless entity @s[tag=exp.armor.head] if items entity @s armor.head * run return run item modify entity @s armor.head {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}
execute unless entity @s[tag=exp.armor.chest] if items entity @s armor.chest * run return run item modify entity @s armor.chest {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}
execute unless entity @s[tag=exp.armor.legs] if items entity @s armor.legs * run return run item modify entity @s armor.legs {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}
execute unless entity @s[tag=exp.armor.feet] if items entity @s armor.feet * run return run item modify entity @s armor.feet {"function": "minecraft:set_custom_data",tag:{exp_armor.equipped:0b}}

return fail