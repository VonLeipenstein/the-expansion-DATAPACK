# take the tank if there is one
execute on vehicle if items entity @s container.0 * unless items entity @p[tag=exp.clicked] weapon.mainhand * run return run function expansion:blocks/compressor/take_tank

# put the tank into the block
execute on vehicle unless items entity @s container.0 * if score #temp exp.bool matches 1.. run function expansion:blocks/compressor/insert_tank