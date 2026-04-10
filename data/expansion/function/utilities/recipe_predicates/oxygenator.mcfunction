# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/oxygenator
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.2 *[custom_data~{exp_item:{name:"fan"}}] \
        if items block ~ ~ ~ container.3 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        \
        if items block ~ ~ ~ container.10 *[custom_data~{exp_item:{name:"steel_plate"}}] \
        if items block ~ ~ ~ container.11 *[custom_data~{exp_item:{name:"oxygen_filter"}}] \
        if items block ~ ~ ~ container.12 *[custom_data~{exp_item:{name:"fan"}}] \
        \
        if items block ~ ~ ~ container.19 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        if items block ~ ~ ~ container.20 *[custom_data~{exp_item:{name:"electromotor"}}] \
        if items block ~ ~ ~ container.21 *[custom_data~{exp_item:{name:"steel_ingot"}}] \
        run return 1

return fail