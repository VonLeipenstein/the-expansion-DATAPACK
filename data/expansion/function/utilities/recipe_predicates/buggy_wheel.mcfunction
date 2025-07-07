execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 leather \
        unless items block ~ ~ ~ container.3 * \
        \
        if items block ~ ~ ~ container.10 leather \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.12 leather \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 leather \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail