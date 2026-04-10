# >>> generated function callers >>>
# Callers for expansion:spacesuits/unequip/check_tags
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute if entity @s[tag=exp.armor.head] unless items entity @s armor.head * run return run tag @s remove exp.armor.head
execute if entity @s[tag=exp.armor.chest] unless items entity @s armor.chest * run return run tag @s remove exp.armor.chest
execute if entity @s[tag=exp.armor.legs] unless items entity @s armor.legs * run return run tag @s remove exp.armor.legs
execute if entity @s[tag=exp.armor.feet] unless items entity @s armor.feet * run return run tag @s remove exp.armor.feet

execute if function expansion:spacesuits/unequip/check_slots run return 1

return fail