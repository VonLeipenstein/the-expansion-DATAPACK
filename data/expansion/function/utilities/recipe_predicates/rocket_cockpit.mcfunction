execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"monochrome_monitor"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.11 glass_pane \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"processing_unit"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        run return 1

return fail