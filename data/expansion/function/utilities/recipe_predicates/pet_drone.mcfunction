execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.3 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.4 * \
        \
        if items block ~ ~ ~ container.10 jigsaw[custom_data~{exp_item:{name:"monochrome_monitor"}}] \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"computing_core"}}] \
        if items block ~ ~ ~ container.12 jigsaw[custom_data~{exp_item:{name:"circuit_board"}}] \
        if items block ~ ~ ~ container.13 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.21 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        unless items block ~ ~ ~ container.22 * \
        run return 1

return 1