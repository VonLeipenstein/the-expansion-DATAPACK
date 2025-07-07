execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.2 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        \
        if items block ~ ~ ~ container.10 jigsaw[custom_data~{exp_item:{name:"circuit_board"}}] \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"cooling_element"}}] \
        if items block ~ ~ ~ container.12 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.13 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        if items block ~ ~ ~ container.19 jigsaw[custom_data~{exp_item:{name:"complex_mechanism"}}] \
        if items block ~ ~ ~ container.20 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        run return 1

return fail