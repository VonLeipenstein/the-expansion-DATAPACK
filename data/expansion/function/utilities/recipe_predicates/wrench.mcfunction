execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 stick \
        unless items block ~ ~ ~ container.12 * \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.20 * \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail