execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"monochrome_monitor"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"circuit_board"}}] \
        if items block ~ ~ ~ container.11 tinted_glass \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"circuit_board"}}] \
        \
        if items block ~ ~ ~ container.19 tinted_glass \
        if items block ~ ~ ~ container.20 tinted_glass \
        if items block ~ ~ ~ container.21 tinted_glass \
        run return 1

return fail