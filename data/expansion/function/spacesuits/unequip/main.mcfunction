# >>> generated function callers >>>
# Callers for expansion:spacesuits/unequip/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

## The unequip function sets any unexp_armor.equipped item to exp_armor.equipped:0b and re-evaluates the players armor effects

# if there is an item in the player cursor (only works in survival for some reason), also unequip it
execute if items entity @s player.cursor *[minecraft:custom_data~{exp_armor.equipped:1b}] run return run function expansion:spacesuits/unequip/reset_cursor

function expansion:spacesuits/unequip/reset_armor