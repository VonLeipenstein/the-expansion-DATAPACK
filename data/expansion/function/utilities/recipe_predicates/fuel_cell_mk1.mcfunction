execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        unless items block ~ ~ ~ container.3 * \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.12 * \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail
