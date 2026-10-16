execute unless block ^ ^ ^-1 minecraft:water run return fail
execute if items block ~ ~ ~ container.3 *[minecraft:custom_data~{exp_item:{name:"oxygen_tank"}}] run return 1
execute if items block ~ ~ ~ container.5 *[minecraft:custom_data~{exp_item:{name:"fuel_cell"}}] run return 1

return fail
