# >>> generated function callers >>>
# Callers for expansion:utilities/recipe_predicates/railgun
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/assembler/recipes (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute if items block ~ ~ ~ container.1 jigsaw[custom_data~{exp_item:{name:"complex_mechanism"}}] \
        if items block ~ ~ ~ container.2 jigsaw[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.3 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.4 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        \
        if items block ~ ~ ~ container.10 jigsaw[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.11 jigsaw[custom_data~{exp_item:{name:"electromagnet"}}] \
        if items block ~ ~ ~ container.12 jigsaw[custom_data~{exp_item:{name:"electromagnet"}}] \
        if items block ~ ~ ~ container.13 jigsaw[custom_data~{exp_item:{name:"electromagnet"}}] \
        \
        if items block ~ ~ ~ container.19 jigsaw[custom_data~{exp_item:{name:"circuit_board"}}] \
        if items block ~ ~ ~ container.20 jigsaw[custom_data~{exp_item:{name:"amethonium_plate"}}] \
        if items block ~ ~ ~ container.21 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        if items block ~ ~ ~ container.22 jigsaw[custom_data~{exp_item:{name:"amethonium_ingot"}}] \
        run return 1

return fail