# take the tank if there is one
execute if items entity @s container.0 * unless items entity @p weapon.mainhand * run function expansion:blocks/compressor/take_tank

# put the tank into the block
execute unless items entity @s[tag=!exp.took_tank] container.0 * if score #temp exp.bool matches 1.. run function expansion:blocks/compressor/insert_tank

# remove extracting tag
tag @s remove exp.took_tank