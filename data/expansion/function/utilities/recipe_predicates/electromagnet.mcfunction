# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/electromagnet
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 iron_ingot \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        if items block ~ ~ ~ container.3 iron_ingot \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        unless items block ~ ~ ~ container.11 * \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        \
        if items block ~ ~ ~ container.19 iron_ingot \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"copper_wire"}}] \
        if items block ~ ~ ~ container.21 iron_ingot \
        run return 1

return fail