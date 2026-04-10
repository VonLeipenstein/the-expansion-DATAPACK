# >>> generated function callers >>>
# Callers for expansion:spacesuits/unequip/check_slots
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/unequip/check_tags (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if items entity @s container.* *[minecraft:custom_data~{exp_armor.equipped:1b}] run return 1

execute if items entity @s weapon.* *[minecraft:custom_data~{exp_armor.equipped:1b}] run return 1
# (doesn't work in creative mode)
execute if items entity @s player.cursor *[minecraft:custom_data~{exp_armor.equipped:1b}] run return 1

return fail