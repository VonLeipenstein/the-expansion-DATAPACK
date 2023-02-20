# Functions that run when the barrel is opened or closed. mainly to prevent the barrel sound from playing
execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel_utility/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel_utility/close_barrel

# functions that run when the barrel is open(when a player interacts with it)
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/fabricator/crafting

# run the flash animation, regulated from prepare_print
execute if score @s exp.cooldown matches 1.. run function expansion:blocks/fabricator/gui/flash

# remove the display items when their respective item is removed from the block inventory
execute unless data block ~ ~ ~ Items[{Slot:15b}] as @e[type=armor_stand,tag=exp.hand_item,limit=1,sort=nearest] if data entity @s ArmorItems[3].id run item replace entity @s armor.head with air
execute unless data block ~ ~ ~ Items[{Slot:15b}] as @e[type=armor_stand,tag=exp.head_item,limit=1,sort=nearest] if data entity @s HandItems[1].id run item replace entity @s weapon.offhand with air
