# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/diver_boots
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        unless items block ~ ~ ~ container.3 * \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.11 * \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        if items block ~ ~ ~ container.19 copper_ingot \
        unless items block ~ ~ ~ container.20 * \
        if items block ~ ~ ~ container.21 copper_ingot \
        run return 1

return fail