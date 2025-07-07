execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        if items block ~ ~ ~ container.10 snowball \
        if items block ~ ~ ~ container.11 clock \
        if items block ~ ~ ~ container.12 magma_cream \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        run return 1

return fail
