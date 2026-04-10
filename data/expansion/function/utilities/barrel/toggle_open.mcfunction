# >>> generated function callers >>>
# Callers for expansion:utilities/barrel/toggle_open
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

# detect if the player is using the block
execute unless entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=true] run function expansion:utilities/barrel/open_barrel
execute if entity @s[tag=exp.barrel_open] if block ~ ~ ~ minecraft:barrel[open=false] run function expansion:utilities/barrel/close_barrel