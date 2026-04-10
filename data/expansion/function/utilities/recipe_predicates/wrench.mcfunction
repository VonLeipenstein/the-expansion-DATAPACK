# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/wrench
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.1 * \
        unless items block ~ ~ ~ container.2 * \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        unless items block ~ ~ ~ container.10 * \
        if items block ~ ~ ~ container.11 stick \
        unless items block ~ ~ ~ container.12 * \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        unless items block ~ ~ ~ container.20 * \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail