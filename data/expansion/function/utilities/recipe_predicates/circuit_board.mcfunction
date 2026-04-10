# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/circuit_board
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 redstone \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"processing_unit"}}] \
        if items block ~ ~ ~ container.3 redstone \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        unless items block ~ ~ ~ container.19 * \
        unless items block ~ ~ ~ container.20 * \
        unless items block ~ ~ ~ container.21 * \
        run return 1

execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        unless items block ~ ~ ~ container.3 * \
        \
        if items block ~ ~ ~ container.10 redstone \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"processing_unit"}}] \
        if items block ~ ~ ~ container.12 redstone \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        run return 1

return fail