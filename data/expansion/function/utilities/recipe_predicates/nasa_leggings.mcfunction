execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.11 * \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.20 * \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        run return 1

return fail