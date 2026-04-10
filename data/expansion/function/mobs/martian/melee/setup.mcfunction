# >>> generated function callers >>>
# Callers for expansion:mobs/martian/melee/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:mobs/martian/melee/summon (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.new_mob

tag @s add exp.melee_mob

loot replace entity @s armor.head loot expansion:armor/trooper/helmet
loot replace entity @s armor.chest loot expansion:armor/trooper/chestplate
loot replace entity @s armor.legs loot expansion:armor/trooper/leggings
loot replace entity @s armor.feet loot expansion:armor/trooper/boots

loot replace entity @s weapon.mainhand loot expansion:weapons/phaserblade
loot replace entity @s weapon.offhand loot expansion:weapons/phasershield