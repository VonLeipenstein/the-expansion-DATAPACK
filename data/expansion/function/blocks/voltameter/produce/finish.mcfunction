scoreboard players reset @s exp.timer_1

fill ^ ^ ^-1 ^ ^ ^-1 minecraft:air replace minecraft:water

# fill any tanks in slots
execute if items block ~ ~ ~ container.3 *[minecraft:custom_data~{exp_item:{name:"oxygen_tank"}}] on passengers if entity @s[tag=exp.output] run function expansion:blocks/voltameter/produce/fill_oxygen_tank
execute if items block ~ ~ ~ container.5 *[minecraft:custom_data~{exp_item:{name:"fuel_cell"}}] on passengers if entity @s[tag=exp.output] run function expansion:blocks/voltameter/produce/fill_fuel_cell
