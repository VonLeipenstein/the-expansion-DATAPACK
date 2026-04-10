# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/copper_wire
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/fabricator/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 copper_ingot \
        if items block ~ ~ ~ container.2 stick \
        if items block ~ ~ ~ container.3 copper_ingot \
        \
        if items block ~ ~ ~ container.10 copper_ingot \
        if items block ~ ~ ~ container.11 stick \
        if items block ~ ~ ~ container.12 copper_ingot \
        \
        if items block ~ ~ ~ container.19 copper_ingot \
        if items block ~ ~ ~ container.20 stick \
        if items block ~ ~ ~ container.21 copper_ingot \
        run return 1

return fail