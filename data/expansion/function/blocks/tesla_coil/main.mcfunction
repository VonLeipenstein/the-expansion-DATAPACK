# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# replace the redstone detection torch if it is broken
execute unless block ~ ~1 ~ minecraft:redstone_torch run function expansion:blocks/tesla_coil/torch_fix

# function to start the coil.
execute unless entity @s[tag=exp.active_coil] unless block ~ ~1 ~ minecraft:redstone_torch[lit=true] run function expansion:blocks/tesla_coil/coil/start

# function when the coil is active
execute if entity @s[tag=exp.active_coil] run function expansion:blocks/tesla_coil/coil/active

# run if the block is destroyed
execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/tesla_coil/destroy
