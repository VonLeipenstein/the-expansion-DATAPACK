# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/fuel_cell_mk1
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        unless items block ~ ~ ~ container.3 * \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.12 * \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail
