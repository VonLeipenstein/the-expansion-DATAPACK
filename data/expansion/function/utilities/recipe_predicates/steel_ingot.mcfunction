# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/steel_ingot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.0 #expansion:iron \
        if items block ~ ~ ~ container.2 #expansion:coal \
        run return 1

execute if items block ~ ~ ~ container.0 #expansion:coal \
        if items block ~ ~ ~ container.2 #expansion:iron \
        run return 1

return fail