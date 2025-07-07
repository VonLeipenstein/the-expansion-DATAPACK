execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        unless items block ~ ~ ~ container.3 * \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.11 * \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        if items block ~ ~ ~ container.19 copper_ingot \
        unless items block ~ ~ ~ container.20 * \
        if items block ~ ~ ~ container.21 copper_ingot \
        run return 1

return fail