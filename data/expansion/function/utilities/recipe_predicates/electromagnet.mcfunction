execute if items block ~ ~ ~ container.1 iron_ingot \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        if items block ~ ~ ~ container.3 iron_ingot \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        unless items block ~ ~ ~ container.11 * \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        \
        if items block ~ ~ ~ container.19 iron_ingot \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        if items block ~ ~ ~ container.21 iron_ingot \
        run return 1

return fail