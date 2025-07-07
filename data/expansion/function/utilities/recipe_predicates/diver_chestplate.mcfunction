execute if items block ~ ~ ~ container.1 copper_ingot \
        unless items block ~ ~ ~ container.2 * \
        if items block ~ ~ ~ container.3 copper_ingot \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.11 copper_ingot \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"oxygen_tank"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        run return 1

return fail