# replace the redstone detection torch if it is broken
execute unless block ~ ~1 ~ minecraft:redstone_torch run function expansion:blocks/tesla_coil/torch_fix

# function to start the coil.
execute if entity @s[tag=!exp.active_coil] unless block ~ ~1 ~ minecraft:redstone_torch[lit=true] run function expansion:blocks/tesla_coil/start_coil

# function when the coil is active
execute if entity @s[tag=exp.active_coil] run function expansion:blocks/tesla_coil/active_coil

# run if the block is destroyed
execute unless block ~ ~ ~ minecraft:end_stone run function expansion:blocks/tesla_coil/destroy
