# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/steel_ingot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] \
        run return 1

return fail