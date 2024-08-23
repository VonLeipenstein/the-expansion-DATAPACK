# run all the terraformer functions
function expansion:blocks/terraformer/shield_generator

# destory the block if the dropper at the base is removed
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/terraformer/destroy