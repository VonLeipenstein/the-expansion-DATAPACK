execute if items block ~ ~ ~ container.1 copper_ingot \
        if items block ~ ~ ~ container.2 copper_ingot \
        if items block ~ ~ ~ container.3 copper_ingot \
        \
        if items block ~ ~ ~ container.10 copper_ingot \
        if items block ~ ~ ~ container.11 tinted_glass \
        if items block ~ ~ ~ container.12 copper_ingot \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        run return 1

return fail