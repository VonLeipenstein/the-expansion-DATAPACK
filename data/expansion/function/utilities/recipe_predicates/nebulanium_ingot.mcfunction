# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/nebulanium_ingot
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/arc_furnace/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"nebulite"}}] \
        if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] \
        run return 1

execute if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"raw_titanium"}}] \
        if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"nebulite"}}] \
        run return 1

execute if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"nebulite"}}] \
        if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"titanium_ingot"}}] \
        run return 1

execute if items block ~ ~ ~ container.0 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"titanium_ingot"}}] \
        if items block ~ ~ ~ container.2 minecraft:jigsaw[minecraft:custom_data~{exp_item:{name:"nebulite"}}] \
        run return 1

return fail