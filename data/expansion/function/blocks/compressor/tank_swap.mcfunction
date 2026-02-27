# take the tank if there is one
execute if items entity @s container.0 * unless items entity @p[tag=exp.clicked] weapon.mainhand * run return run function expansion:blocks/compressor/take_tank

# put the tank into the block
execute unless items entity @s container.0 * if entity @p[tag=exp.clicked,predicate=expansion:holding/items/oxygen_tank] run function expansion:blocks/compressor/insert_tank