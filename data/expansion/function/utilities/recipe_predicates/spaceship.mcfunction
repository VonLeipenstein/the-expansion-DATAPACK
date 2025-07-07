execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        if items block ~ ~ ~ container.3 jigsaw[custom_data~{exp_item:{name:"spaceship_nose"}}] \
        unless items block ~ ~ ~ container.4 * \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"spaceship_left_wing"}}] \
        if items block ~ ~ ~ container.12 jigsaw[custom_data~{exp_item:{name:"spaceship_cockpit"}}] \
        if items block ~ ~ ~ container.13 jigsaw[custom_data~{exp_item:{name:"spaceship_right_wing"}}] \
        \
        unless items block ~ ~ ~ container.19 * \
        unless items block ~ ~ ~ container.20 * \
        if items block ~ ~ ~ container.21 jigsaw[custom_data~{exp_item:{name:"spaceship_engines"}}] \
        unless items block ~ ~ ~ container.22 * \
        run return 1

execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 jigsaw[custom_data~{exp_item:{name:"spaceship_nose"}}] \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        \
        if items block ~ ~ ~ container.10 jigsaw[custom_data~{exp_item:{name:"spaceship_left_wing"}}] \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"spaceship_cockpit"}}] \
        if items block ~ ~ ~ container.12 jigsaw[custom_data~{exp_item:{name:"spaceship_right_wing"}}] \
        unless items block ~ ~ ~ container.13 * \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 jigsaw[custom_data~{exp_item:{name:"spaceship_engines"}}] \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        run return 1

return fail