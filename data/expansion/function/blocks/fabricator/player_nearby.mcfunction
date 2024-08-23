# Functions that run when the barrel is opened or closed. mainly to prevent the barrel sound from playing
execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel/close_barrel

# functions that run when the barrel is open(when a player interacts with it)
execute if entity @s[tag=exp.barrel_open] run function expansion:blocks/fabricator/crafting

# run the flash animation, regulated from prepare_print
execute if score @s exp.cooldown matches 1.. run function expansion:blocks/fabricator/gui/flash

# remove the display items when their respective item is removed from the block inventory
execute unless score @s exp.timer_1 matches 1..20 unless items block ~ ~ ~ container.15 * run item replace entity @e[type=minecraft:item_display,tag=exp.fabricator_display,limit=1,sort=nearest] container.0 with air
