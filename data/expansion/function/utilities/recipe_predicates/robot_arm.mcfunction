execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"complex_mechanism"}}] \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        unless items block ~ ~ ~ container.12 * \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"electromotor"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        run return 1

return fail