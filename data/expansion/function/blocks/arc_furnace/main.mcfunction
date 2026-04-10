# >>> generated function callers >>>
# Callers for expansion:blocks/arc_furnace/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# destroy the arc furnace
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/arc_furnace/destroy

# melting
execute on passengers unless items entity @s container.0 * on vehicle if items block ~ ~ ~ container.0 * if items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.7 *[count=64] run function expansion:blocks/arc_furnace/recipes
execute on passengers if items entity @s container.0 * on vehicle run function expansion:blocks/arc_furnace/melting/melting

# turn off the arc furnace if there are no more ingredients or if the output slot is full
execute if entity @s[tag=exp.smelting] on passengers unless items entity @s container.0 * on vehicle run function expansion:blocks/arc_furnace/switch_model/turn_off

# gui functions
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/arc_furnace/gui