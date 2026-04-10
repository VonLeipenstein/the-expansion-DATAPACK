# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/buggy_wheel
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute unless items block ~ ~ ~ container.1 * \
        if items block ~ ~ ~ container.2 leather \
        unless items block ~ ~ ~ container.3 * \
        \
        if items block ~ ~ ~ container.10 leather \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.12 leather \
        \
        unless items block ~ ~ ~ container.19 * \
        if items block ~ ~ ~ container.20 leather \
        unless items block ~ ~ ~ container.21 * \
        run return 1

return fail