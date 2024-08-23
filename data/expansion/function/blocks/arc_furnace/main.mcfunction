# destroy the arc furnace
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/arc_furnace/destroy

# melting
execute unless data entity @s ArmorItems[0].count if block ~ ~ ~ minecraft:dropper{Items:[{Slot:0b},{Slot:2b}]} unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b,count:64}]} run function expansion:blocks/arc_furnace/recipes
execute if data entity @s ArmorItems[0].count run function expansion:blocks/arc_furnace/melting/melting

# turn off the arc furnace if there are no more ingredients or if the output slot is full
execute if entity @s[tag=exp.smelting] unless data entity @s ArmorItems[0].count run function expansion:blocks/arc_furnace/switch_model/turn_off

# gui functions
execute if entity @p[distance=..6] run function expansion:blocks/arc_furnace/gui

